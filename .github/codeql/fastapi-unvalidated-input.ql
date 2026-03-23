/**
 * @name FastAPI route handler accessing raw request data
 * @description A route handler reads request.query_params, request.body, or
 *              request.form directly instead of declaring a typed Pydantic parameter.
 *              This bypasses FastAPI's automatic validation and may pass unsanitized
 *              user input to downstream logic.
 * @kind problem
 * @problem.severity warning
 * @security-severity 5.0
 * @precision medium
 * @id python/fastapi-unvalidated-request-access
 * @tags security
 *       maintainability
 *       external/cwe/cwe-020
 */

import python

from Function routeHandler, Attribute rawAccess
where
  // The function has a FastAPI route decorator (@router.get, @app.post, etc.)
  exists(Decorator dec, Attribute decoratorAttr |
    dec = routeHandler.getADecorator() and
    decoratorAttr = dec.getExpr() and
    decoratorAttr.getName() in ["get", "post", "put", "delete", "patch"]
  ) and
  // And it accesses raw request data directly
  rawAccess.getScope() = routeHandler and
  rawAccess.getObject().(Name).getId() = "request" and
  rawAccess.getName() in ["query_params", "body", "form", "headers", "_body"]
select rawAccess,
  "Route handler '" + routeHandler.getName() +
  "' accesses raw request." + rawAccess.getName() +
  " — declare a typed Pydantic parameter instead for automatic validation."
