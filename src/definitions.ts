export interface MapboxNavigationPluginPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  navigateToDestination(navigationOptions: NavigationOptions): Promise<void>;
}


export interface NavigationOptions{
  latitude: string;
  longitude: string;
  userId: string
}
