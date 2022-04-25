import { registerPlugin } from '@capacitor/core';

import type { MapboxNavigationPluginPlugin } from './definitions';

const MapboxNavigationPlugin = registerPlugin<MapboxNavigationPluginPlugin>('MapboxNavigationPlugin', {
  web: () => import('./web').then(m => new m.MapboxNavigationPluginWeb()),
});

export * from './definitions';
export { MapboxNavigationPlugin };
