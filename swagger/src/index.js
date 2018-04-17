import SwaggerUI from 'swagger-ui';

import 'swagger-ui/dist/swagger-ui.css';

const url = new URL(window.location);
const params = new URLSearchParams(url.search);
const branch = params.get("branch") || "master";
const specURL = `https://velopaymentsapi.github.io/VeloOpenApi/version/${branch}/openapi.yaml`

SwaggerUI({
  dom_id: '#root',
  url: specURL
});