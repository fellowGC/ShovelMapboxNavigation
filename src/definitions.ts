export interface MapboxNavigationPluginPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
