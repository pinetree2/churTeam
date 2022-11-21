/*
 *    Copyright 2010-2022 the original author or authors.
 *
 *    Licensed under the Apache License, Version 2.0 (the "License");
 *    you may not use this file except in compliance with the License.
 *    You may obtain a copy of the License at
 *
 *       https://www.apache.org/licenses/LICENSE-2.0
 *
 *    Unless required by applicable law or agreed to in writing, software
 *    distributed under the License is distributed on an "AS IS" BASIS,
 *    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *    See the License for the specific language governing permissions and
 *    limitations under the License.
 */
package org.mybatis.jpetstore.intercept;

import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.controller.ExecutionContext;
import net.sourceforge.stripes.controller.Interceptor;
import net.sourceforge.stripes.controller.Intercepts;
import net.sourceforge.stripes.controller.LifecycleStage;
import net.sourceforge.stripes.integration.spring.SpringHelper;

@Intercepts({ LifecycleStage.ActionBeanResolution, LifecycleStage.HandlerResolution,
    LifecycleStage.BindingAndValidation, LifecycleStage.CustomValidation, LifecycleStage.EventHandling,
    LifecycleStage.ResolutionExecution })
public abstract class TestInterceptor implements Interceptor {
  @Override
  public final Resolution intercept(ExecutionContext ctx) throws Exception {
    SpringHelper.injectBeans(this, ctx.getActionBeanContext());
    return reallyIntercept(ctx);
  }

  public abstract Resolution reallyIntercept(ExecutionContext ctx) throws Exception;
}
