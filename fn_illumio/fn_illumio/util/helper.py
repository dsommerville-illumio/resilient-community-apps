from illumio import PolicyComputeEngine


class IllumioHelper:

    def __init__(self, app_config) -> None:
        self.app_config = app_config

    def get_pce_instance(self) -> PolicyComputeEngine:
        """
        Initialize a PolicyComputeEngine instance from the app's
        global configuration. Provides an interface to make API
        calls against the PCE.
        """
        domain_name = self.app_config.get('illumio_pce_domain_name', '')
        port = self.app_config.get('illumio_pce_port', '')
        org_id = self.app_config.get('illumio_pce_org_id', '')
        api_key = self.app_config.get('illumio_pce_api_key', '')
        api_secret = self.app_config.get('illumio_pce_api_secret', '')
        pce = PolicyComputeEngine(domain_name, org_id=org_id, port=port)
        pce.set_credentials(api_key, api_secret)
        pce.set_proxies(**self._get_proxies())
        return pce

    def _get_proxies(self) -> dict:
        proxies = {}
        if 'http_proxy' in self.app_config:
            proxies['http_proxy'] = self.app_config.get('http_proxy', '')
        if 'https_proxy' in self.app_config:
            proxies['https_proxy'] = self.app_config.get('https_proxy', '')
        return proxies
