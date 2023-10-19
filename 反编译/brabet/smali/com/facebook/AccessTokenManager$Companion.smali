.class public final Lcom/facebook/AccessTokenManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AccessTokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lḓ/ᓭ/㺴/ᆻ;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/AccessTokenManager$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$createExtendAccessTokenRequest(Lcom/facebook/AccessTokenManager$Companion;Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/AccessTokenManager$Companion;->createExtendAccessTokenRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createGrantedPermissionsRequest(Lcom/facebook/AccessTokenManager$Companion;Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/AccessTokenManager$Companion;->createGrantedPermissionsRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p0

    return-object p0
.end method

.method private final createExtendAccessTokenRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 4

    invoke-direct {p0, p1}, Lcom/facebook/AccessTokenManager$Companion;->getRefreshTokenInfoForToken(Lcom/facebook/AccessToken;)Lcom/facebook/AccessTokenManager$RefreshTokenInfo;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0}, Lcom/facebook/AccessTokenManager$RefreshTokenInfo;->getGrantType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "grant_type"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "client_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "fields"

    const-string v3, "access_token,expires_at,expires_in,data_access_expiration_time,graph_domain"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/facebook/GraphRequest;->Companion:Lcom/facebook/GraphRequest$Companion;

    invoke-interface {v0}, Lcom/facebook/AccessTokenManager$RefreshTokenInfo;->getGraphPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0, p2}, Lcom/facebook/GraphRequest$Companion;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    sget-object p2, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-virtual {p1, p2}, Lcom/facebook/GraphRequest;->setHttpMethod(Lcom/facebook/HttpMethod;)V

    return-object p1
.end method

.method private final createGrantedPermissionsRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fields"

    const-string v2, "permission,status"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/GraphRequest;->Companion:Lcom/facebook/GraphRequest$Companion;

    const-string v2, "me/permissions"

    invoke-virtual {v1, p1, v2, p2}, Lcom/facebook/GraphRequest$Companion;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    sget-object p2, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-virtual {p1, p2}, Lcom/facebook/GraphRequest;->setHttpMethod(Lcom/facebook/HttpMethod;)V

    return-object p1
.end method

.method private final getRefreshTokenInfoForToken(Lcom/facebook/AccessToken;)Lcom/facebook/AccessTokenManager$RefreshTokenInfo;
    .locals 1

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getGraphDomain()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "facebook"

    :cond_0
    const-string v0, "instagram"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/facebook/AccessTokenManager$InstagramRefreshTokenInfo;

    invoke-direct {p1}, Lcom/facebook/AccessTokenManager$InstagramRefreshTokenInfo;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/facebook/AccessTokenManager$FacebookRefreshTokenInfo;

    invoke-direct {p1}, Lcom/facebook/AccessTokenManager$FacebookRefreshTokenInfo;-><init>()V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final getInstance()Lcom/facebook/AccessTokenManager;
    .locals 3

    invoke-static {}, Lcom/facebook/AccessTokenManager;->access$getInstanceField$cp()Lcom/facebook/AccessTokenManager;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/AccessTokenManager;->access$getInstanceField$cp()Lcom/facebook/AccessTokenManager;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, L㚬/ᓭ/உ/உ;->䂻(Landroid/content/Context;)L㚬/ᓭ/உ/உ;

    move-result-object v0

    const-string v1, "getInstance(applicationContext)"

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/facebook/AccessTokenCache;

    invoke-direct {v1}, Lcom/facebook/AccessTokenCache;-><init>()V

    new-instance v2, Lcom/facebook/AccessTokenManager;

    invoke-direct {v2, v0, v1}, Lcom/facebook/AccessTokenManager;-><init>(L㚬/ᓭ/உ/உ;Lcom/facebook/AccessTokenCache;)V

    sget-object v0, Lcom/facebook/AccessTokenManager;->Companion:Lcom/facebook/AccessTokenManager$Companion;

    invoke-static {v2}, Lcom/facebook/AccessTokenManager;->access$setInstanceField$cp(Lcom/facebook/AccessTokenManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    return-object v0
.end method
