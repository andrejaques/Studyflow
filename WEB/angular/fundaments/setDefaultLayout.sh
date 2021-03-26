# To set the default layout to components
# in app-routing.module.ts (inside app folder). Add the import like:
import { ComponentName } from '../app/directory/component-name/component-name.component';

# and add inside const routes: Routes = [, the atribute like:
{
  path: 'component-name',
  component: DefaultLayoutComponent, #the default layout from step
  children: [
    { path: '', component: ComponentName },
  ]
},
