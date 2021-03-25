# to configure a router to the component we need to do some steps:

# - 01
# add routerlink in the layout html nav item or similar (layoutcontrolpanel or layoutfeed)
routerLink="/component-name"

# - 02
# check if the component is already in the file app.module.ts (inside app folder) Needs to have two lines like this sample:
import { ComponentName } from './directory/componentname/component-name.component'; #by defaukt the Angular use uppercase in first letters name for components module.

#in @NgModule({ declarations: [     or in    imports: [, needs to have this line
ComponentName,

# - 03
# add the component in app-routing.module.ts (inside app folder). Add the import like:
import { ComponentName } from '../app/directory/component-name/component-name.component';

# and add inside const routes: Routes = [, the atribute like:
{
  path: 'component-name',
  component: LayoutfeedComponent, #the default layout from step - 01
  children: [
    { path: '', component: ComponentName },
  ]
},
