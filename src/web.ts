import { WebPlugin } from '@capacitor/core';

import type { MapboxNavigationPluginPlugin, NavigationOptions } from './definitions';

export class MapboxNavigationPluginWeb extends WebPlugin implements MapboxNavigationPluginPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }

  async navigateToDestination(navigationOptions: NavigationOptions): Promise<void> {

  }
}
