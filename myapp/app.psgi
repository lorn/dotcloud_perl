# app.psgi
use Plack::Builder;
use lib 'lib';
use MyApp;
builder {
    enable "BufferedStreaming";
    MyApp->apply_default_middlewares(MyApp->psgi_app);
};

