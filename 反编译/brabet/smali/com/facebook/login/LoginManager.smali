.class public Lcom/facebook/login/LoginManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;,
        Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;,
        Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;,
        Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;,
        Lcom/facebook/login/LoginManager$LoginLoggerHolder;,
        Lcom/facebook/login/LoginManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/login/LoginManager$Companion;

.field private static final EXPRESS_LOGIN_ALLOWED:Ljava/lang/String; = "express_login_allowed"

.field private static final MANAGE_PERMISSION_PREFIX:Ljava/lang/String; = "manage"

.field private static final OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREFERENCE_LOGIN_MANAGER:Ljava/lang/String; = "com.facebook.loginManager"

.field private static final PUBLISH_PERMISSION_PREFIX:Ljava/lang/String; = "publish"

.field private static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/facebook/login/LoginManager;


# instance fields
.field private authType:Ljava/lang/String;

.field private defaultAudience:Lcom/facebook/login/DefaultAudience;

.field private isFamilyLogin:Z

.field private loginBehavior:Lcom/facebook/login/LoginBehavior;

.field private loginTargetApp:Lcom/facebook/login/LoginTargetApp;

.field private messengerPageId:Ljava/lang/String;

.field private resetMessengerState:Z

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private shouldSkipAccountDeduplication:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/login/LoginManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/login/LoginManager$Companion;-><init>(Lḓ/ᓭ/㺴/ᆻ;)V

    sput-object v0, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    invoke-static {v0}, Lcom/facebook/login/LoginManager$Companion;->access$getOtherPublishPermissions(Lcom/facebook/login/LoginManager$Companion;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/login/LoginManager;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    const-class v0, Lcom/facebook/login/LoginManager;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginManager::class.java.toString()"

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/login/LoginManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    iput-object v0, p0, Lcom/facebook/login/LoginManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    sget-object v0, Lcom/facebook/login/DefaultAudience;->FRIENDS:Lcom/facebook/login/DefaultAudience;

    iput-object v0, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    const-string v0, "rerequest"

    iput-object v0, p0, Lcom/facebook/login/LoginManager;->authType:Ljava/lang/String;

    sget-object v0, Lcom/facebook/login/LoginTargetApp;->FACEBOOK:Lcom/facebook/login/LoginTargetApp;

    iput-object v0, p0, Lcom/facebook/login/LoginManager;->loginTargetApp:Lcom/facebook/login/LoginTargetApp;

    sget-object v0, Lcom/facebook/internal/Validate;->INSTANCE:Lcom/facebook/internal/Validate;

    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    sget-object v0, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.loginManager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getApplicationContext().getSharedPreferences(PREFERENCE_LOGIN_MANAGER, Context.MODE_PRIVATE)"

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/login/LoginManager;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-boolean v0, Lcom/facebook/FacebookSdk;->hasCustomTabsPrefetching:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/internal/CustomTabUtils;->INSTANCE:Lcom/facebook/internal/CustomTabUtils;

    invoke-static {}, Lcom/facebook/internal/CustomTabUtils;->getChromePackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/login/CustomTabPrefetchHelper;

    invoke-direct {v0}, Lcom/facebook/login/CustomTabPrefetchHelper;-><init>()V

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.chrome"

    invoke-static {v1, v2, v0}, L㚬/㺴/䂻/䂻;->உ(Landroid/content/Context;Ljava/lang/String;L㚬/㺴/䂻/㺴;)Z

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, L㚬/㺴/䂻/䂻;->䂻(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/facebook/login/LoginManager;
    .locals 1

    sget-object v0, Lcom/facebook/login/LoginManager;->instance:Lcom/facebook/login/LoginManager;

    return-object v0
.end method

.method public static final synthetic access$getOTHER_PUBLISH_PERMISSIONS$cp()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/facebook/login/LoginManager;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$logCompleteLogin(Lcom/facebook/login/LoginManager;Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/facebook/login/LoginManager;->logCompleteLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public static final synthetic access$logStartLogin(Lcom/facebook/login/LoginManager;Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/login/LoginManager;->logStartLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public static final synthetic access$resolveIntent(Lcom/facebook/login/LoginManager;Landroid/content/Intent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/login/LoginManager;->resolveIntent(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/facebook/login/LoginManager;)V
    .locals 0

    sput-object p0, Lcom/facebook/login/LoginManager;->instance:Lcom/facebook/login/LoginManager;

    return-void
.end method

.method public static final computeLoginResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;)Lcom/facebook/login/LoginResult;
    .locals 1

    sget-object v0, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/facebook/login/LoginManager$Companion;->computeLoginResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;)Lcom/facebook/login/LoginResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createLogInActivityResultContract$default(Lcom/facebook/login/LoginManager;Lcom/facebook/CallbackManager;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;
    .locals 1

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/LoginManager;->createLogInActivityResultContract(Lcom/facebook/CallbackManager;Ljava/lang/String;)Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createLogInActivityResultContract"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final createLoginRequestFromResponse(Lcom/facebook/GraphResponse;)Lcom/facebook/login/LoginClient$Request;
    .locals 1

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getRequest()Lcom/facebook/GraphRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lḓ/㹖/㭲;->㭲(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p1

    return-object p1
.end method

.method private final finishLogin(Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;Lcom/facebook/login/LoginClient$Request;Lcom/facebook/FacebookException;ZLcom/facebook/FacebookCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AccessToken;",
            "Lcom/facebook/AuthenticationToken;",
            "Lcom/facebook/login/LoginClient$Request;",
            "Lcom/facebook/FacebookException;",
            "Z",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/login/LoginResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v0, p1}, Lcom/facebook/AccessToken$Companion;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    sget-object v0, Lcom/facebook/Profile;->Companion:Lcom/facebook/Profile$Companion;

    invoke-virtual {v0}, Lcom/facebook/Profile$Companion;->fetchProfileForCurrentAccessToken()V

    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lcom/facebook/AuthenticationToken;->Companion:Lcom/facebook/AuthenticationToken$Companion;

    invoke-virtual {v0, p2}, Lcom/facebook/AuthenticationToken$Companion;->setCurrentAuthenticationToken(Lcom/facebook/AuthenticationToken;)V

    :cond_1
    if-eqz p6, :cond_6

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    sget-object v0, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    invoke-virtual {v0, p3, p1, p2}, Lcom/facebook/login/LoginManager$Companion;->computeLoginResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;)Lcom/facebook/login/LoginResult;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-nez p5, :cond_5

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/facebook/login/LoginResult;->getRecentlyGrantedPermissions()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    invoke-interface {p6, p4}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/facebook/login/LoginManager;->setExpressLoginStatus(Z)V

    invoke-interface {p6, p2}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-interface {p6}, Lcom/facebook/FacebookCallback;->onCancel()V

    :cond_6
    :goto_2
    return-void
.end method

.method public static final getExtraDataFromIntent(Landroid/content/Intent;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/login/LoginManager$Companion;->getExtraDataFromIntent(Landroid/content/Intent;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/facebook/login/LoginManager;
    .locals 1

    sget-object v0, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager$Companion;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    return-object v0
.end method

.method private final isExpressLoginAllowed()Z
    .locals 3

    iget-object v0, p0, Lcom/facebook/login/LoginManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "express_login_allowed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static final isPublishPermission(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/login/LoginManager$Companion;->isPublishPermission(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final logCompleteLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/login/LoginClient$Result$Code;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            "Z",
            "Lcom/facebook/login/LoginClient$Request;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->INSTANCE:Lcom/facebook/login/LoginManager$LoginLoggerHolder;

    invoke-virtual {v0, p1}, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->getLogger(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p6, :cond_1

    const/4 p4, 0x0

    const/4 p5, 0x4

    const/4 p6, 0x0

    const-string p2, "fb_mobile_login_complete"

    const-string p3, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    move-object p1, v1

    invoke-static/range {p1 .. p6}, Lcom/facebook/login/LoginLogger;->logUnexpectedError$default(Lcom/facebook/login/LoginLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz p5, :cond_2

    const-string p1, "1"

    goto :goto_0

    :cond_2
    const-string p1, "0"

    :goto_0
    const-string p5, "try_login_activity"

    invoke-interface {v3, p5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p6}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p6}, Lcom/facebook/login/LoginClient$Request;->isFamilyLogin()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "foa_mobile_login_complete"

    goto :goto_1

    :cond_3
    const-string p1, "fb_mobile_login_complete"

    :goto_1
    move-object v7, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/login/LoginLogger;->logCompleteLogin(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private final logIn(L㚬/உ/ḓ/㺴;Lcom/facebook/CallbackManager;Lcom/facebook/login/LoginConfiguration;)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/facebook/login/LoginManager;->createLoginRequestWithConfig(Lcom/facebook/login/LoginConfiguration;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p3

    new-instance v0, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;

    invoke-direct {v0, p1, p2}, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;-><init>(L㚬/உ/ḓ/㺴;Lcom/facebook/CallbackManager;)V

    invoke-direct {p0, v0, p3}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method private final logInWithPublishPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/FragmentWrapper;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->validatePublishPermissions(Ljava/util/Collection;)V

    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p2, v1, v2, v1}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;Ljava/lang/String;ILḓ/ᓭ/㺴/ᆻ;)V

    invoke-direct {p0, p1, v0}, Lcom/facebook/login/LoginManager;->loginWithConfiguration(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method private final logInWithReadPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/FragmentWrapper;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->validateReadPermissions(Ljava/util/Collection;)V

    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p2, v1, v2, v1}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;Ljava/lang/String;ILḓ/ᓭ/㺴/ᆻ;)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/login/LoginManager;->logIn(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method private final logStartLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V
    .locals 1

    sget-object v0, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->INSTANCE:Lcom/facebook/login/LoginManager$LoginLoggerHolder;

    invoke-virtual {v0, p1}, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->getLogger(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/facebook/login/LoginClient$Request;->isFamilyLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "foa_mobile_login_start"

    goto :goto_0

    :cond_0
    const-string v0, "fb_mobile_login_start"

    :goto_0
    invoke-virtual {p1, p2, v0}, Lcom/facebook/login/LoginLogger;->logStartLogin(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final loginWithConfiguration(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/login/LoginConfiguration;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/LoginManager;->logIn(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method public static synthetic onActivityResult$default(Lcom/facebook/login/LoginManager;ILandroid/content/Intent;Lcom/facebook/FacebookCallback;ILjava/lang/Object;)Z
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/login/LoginManager;->onActivityResult(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onActivityResult"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final reauthorizeDataAccess(Lcom/facebook/internal/FragmentWrapper;)V
    .locals 2

    invoke-virtual {p0}, Lcom/facebook/login/LoginManager;->createReauthorizeRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    new-instance v1, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;

    invoke-direct {v1, p1}, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method private static final registerCallback$lambda-0(Lcom/facebook/login/LoginManager;Lcom/facebook/FacebookCallback;ILandroid/content/Intent;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3, p1}, Lcom/facebook/login/LoginManager;->onActivityResult(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z

    move-result p0

    return p0
.end method

.method private final resolveError(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/GraphResponse;)V
    .locals 1

    new-instance v0, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;

    invoke-direct {v0, p1}, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequestFromResponse(Lcom/facebook/GraphResponse;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method private final resolveIntent(Landroid/content/Intent;)Z
    .locals 2

    sget-object v0, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private final retrieveLoginStatusImpl(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;J)V
    .locals 11

    sget-object v0, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v1, "randomUUID().toString()"

    invoke-static {v9, v1}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/facebook/login/LoginLogger;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-direct {v10, v1, v0}, Lcom/facebook/login/LoginLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/facebook/login/LoginManager;->isExpressLoginAllowed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v10, v9}, Lcom/facebook/login/LoginLogger;->logLoginStatusFailure(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    return-void

    :cond_1
    sget-object v1, Lcom/facebook/login/LoginStatusClient;->Companion:Lcom/facebook/login/LoginStatusClient$Companion;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getGraphApiVersion()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, v0

    move-object v4, v9

    move-wide v6, p3

    invoke-virtual/range {v1 .. v8}, Lcom/facebook/login/LoginStatusClient$Companion;->newInstance$facebook_common_release(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/facebook/login/LoginStatusClient;

    move-result-object p1

    new-instance p3, L㺴/உ/㫏/ཇ;

    invoke-direct {p3, v9, v10, p2, v0}, L㺴/உ/㫏/ཇ;-><init>(Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/facebook/internal/PlatformServiceClient;->setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V

    invoke-virtual {v10, v9}, Lcom/facebook/login/LoginLogger;->logLoginStatusStart(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/internal/PlatformServiceClient;->start()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v10, v9}, Lcom/facebook/login/LoginLogger;->logLoginStatusFailure(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    :cond_2
    return-void
.end method

.method private static final retrieveLoginStatusImpl$lambda-2(Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v0, p4

    const-string v1, "$loggerRef"

    invoke-static {v3, v1}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$logger"

    invoke-static {v4, v1}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$responseCallback"

    invoke-static {v5, v1}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$applicationId"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_a

    const-string v1, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "com.facebook.platform.status.ERROR_DESCRIPTION"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_0

    sget-object v0, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    move-object v2, v6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v5}, Lcom/facebook/login/LoginManager$Companion;->access$handleLoginStatusError(Lcom/facebook/login/LoginManager$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;)V

    goto/16 :goto_6

    :cond_0
    const-string v1, "com.facebook.platform.extra.ACCESS_TOKEN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    new-instance v1, Ljava/util/Date;

    const-wide/16 v8, 0x0

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    const-string v6, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"

    invoke-static {v0, v6, v1}, Lcom/facebook/internal/Utility;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v14

    const-string v1, "com.facebook.platform.extra.PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    const-string v1, "signed request"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "graph_domain"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    const-string v8, "com.facebook.platform.extra.EXTRA_DATA_ACCESS_EXPIRATION_TIME"

    invoke-static {v0, v8, v6}, Lcom/facebook/internal/Utility;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v16

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v9, 0x1

    :goto_1
    if-nez v9, :cond_3

    sget-object v0, Lcom/facebook/login/LoginMethodHandler;->Companion:Lcom/facebook/login/LoginMethodHandler$Companion;

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginMethodHandler$Companion;->getUserIDFromSignedRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v9, v0

    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_a

    if-eqz v10, :cond_7

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_a

    if-eqz v9, :cond_8

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/4 v6, 0x1

    :cond_9
    if-nez v6, :cond_a

    new-instance v0, Lcom/facebook/AccessToken;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v6, v0

    move-object/from16 v8, p3

    invoke-direct/range {v6 .. v17}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v1, v0}, Lcom/facebook/AccessToken$Companion;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    sget-object v1, Lcom/facebook/Profile;->Companion:Lcom/facebook/Profile$Companion;

    invoke-virtual {v1}, Lcom/facebook/Profile$Companion;->fetchProfileForCurrentAccessToken()V

    invoke-virtual {v4, v3}, Lcom/facebook/login/LoginLogger;->logLoginStatusSuccess(Ljava/lang/String;)V

    invoke-interface {v5, v0}, Lcom/facebook/LoginStatusCallback;->onCompleted(Lcom/facebook/AccessToken;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v4, v3}, Lcom/facebook/login/LoginLogger;->logLoginStatusFailure(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    :goto_6
    return-void
.end method

.method private final setExpressLoginStatus(Z)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/login/LoginManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "express_login_allowed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V
    .locals 8

    invoke-interface {p1}, Lcom/facebook/login/StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logStartLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V

    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl;->Companion:Lcom/facebook/internal/CallbackManagerImpl$Companion;

    sget-object v1, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v1}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v1

    new-instance v2, L㺴/உ/㫏/ᓭ;

    invoke-direct {v2, p0}, L㺴/உ/㫏/ᓭ;-><init>(Lcom/facebook/login/LoginManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/CallbackManagerImpl$Companion;->registerStaticCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    invoke-direct {p0, p1, p2}, Lcom/facebook/login/LoginManager;->tryFacebookActivity(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-interface {p1}, Lcom/facebook/login/StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/facebook/login/LoginClient$Result$Code;->ERROR:Lcom/facebook/login/LoginClient$Result$Code;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/facebook/login/LoginManager;->logCompleteLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    throw v0
.end method

.method private static final startLogin$lambda-1(Lcom/facebook/login/LoginManager;ILandroid/content/Intent;)Z
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/facebook/login/LoginManager;->onActivityResult$default(Lcom/facebook/login/LoginManager;ILandroid/content/Intent;Lcom/facebook/FacebookCallback;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final tryFacebookActivity(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)Z
    .locals 2

    invoke-virtual {p0, p2}, Lcom/facebook/login/LoginManager;->getFacebookActivityIntent(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->resolveIntent(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/login/LoginClient;->Companion:Lcom/facebook/login/LoginClient$Companion;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient$Companion;->getLoginRequestCode()I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/facebook/login/StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1
.end method

.method private final validatePublishPermissions(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    invoke-virtual {v1, v0}, Lcom/facebook/login/LoginManager$Companion;->isPublishPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/facebook/FacebookException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot pass a read permission ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") to a request for publish authorization"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method private final validateReadPermissions(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    invoke-virtual {v1, v0}, Lcom/facebook/login/LoginManager$Companion;->isPublishPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/facebook/FacebookException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot pass a publish or manage permission ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") to a request for read authorization"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public static synthetic உ(Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/login/LoginManager;->retrieveLoginStatusImpl$lambda-2(Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic 㚬(Lcom/facebook/login/LoginManager;Lcom/facebook/FacebookCallback;ILandroid/content/Intent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/login/LoginManager;->registerCallback$lambda-0(Lcom/facebook/login/LoginManager;Lcom/facebook/FacebookCallback;ILandroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 䂻(Lcom/facebook/login/LoginManager;ILandroid/content/Intent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/facebook/login/LoginManager;->startLogin$lambda-1(Lcom/facebook/login/LoginManager;ILandroid/content/Intent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final createLogInActivityResultContract()Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p0, v0, v0, v1, v0}, Lcom/facebook/login/LoginManager;->createLogInActivityResultContract$default(Lcom/facebook/login/LoginManager;Lcom/facebook/CallbackManager;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;

    move-result-object v0

    return-object v0
.end method

.method public final createLogInActivityResultContract(Lcom/facebook/CallbackManager;)Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/facebook/login/LoginManager;->createLogInActivityResultContract$default(Lcom/facebook/login/LoginManager;Lcom/facebook/CallbackManager;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;

    move-result-object p1

    return-object p1
.end method

.method public final createLogInActivityResultContract(Lcom/facebook/CallbackManager;Ljava/lang/String;)Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;
    .locals 1

    new-instance v0, Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/login/LoginManager$FacebookLoginActivityResultContract;-><init>(Lcom/facebook/login/LoginManager;Lcom/facebook/CallbackManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/login/LoginClient$Request;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v15, Lcom/facebook/login/LoginClient$Request;

    iget-object v2, v0, Lcom/facebook/login/LoginManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Lḓ/㹖/㭲;->䅚(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    :goto_0
    move-object v3, v1

    iget-object v4, v0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    iget-object v5, v0, Lcom/facebook/login/LoginManager;->authType:Ljava/lang/String;

    sget-object v1, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v1, "randomUUID().toString()"

    invoke-static {v7, v1}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/facebook/login/LoginManager;->loginTargetApp:Lcom/facebook/login/LoginTargetApp;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x780

    const/4 v14, 0x0

    move-object v1, v15

    invoke-direct/range {v1 .. v14}, Lcom/facebook/login/LoginClient$Request;-><init>(Lcom/facebook/login/LoginBehavior;Ljava/util/Set;Lcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginTargetApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/CodeChallengeMethod;ILḓ/ᓭ/㺴/ᆻ;)V

    sget-object v1, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v1}, Lcom/facebook/AccessToken$Companion;->isCurrentAccessTokenActive()Z

    move-result v1

    invoke-virtual {v15, v1}, Lcom/facebook/login/LoginClient$Request;->setRerequest(Z)V

    iget-object v1, v0, Lcom/facebook/login/LoginManager;->messengerPageId:Ljava/lang/String;

    invoke-virtual {v15, v1}, Lcom/facebook/login/LoginClient$Request;->setMessengerPageId(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/facebook/login/LoginManager;->resetMessengerState:Z

    invoke-virtual {v15, v1}, Lcom/facebook/login/LoginClient$Request;->setResetMessengerState(Z)V

    iget-boolean v1, v0, Lcom/facebook/login/LoginManager;->isFamilyLogin:Z

    invoke-virtual {v15, v1}, Lcom/facebook/login/LoginClient$Request;->setFamilyLogin(Z)V

    iget-boolean v1, v0, Lcom/facebook/login/LoginManager;->shouldSkipAccountDeduplication:Z

    invoke-virtual {v15, v1}, Lcom/facebook/login/LoginClient$Request;->setShouldSkipAccountDeduplication(Z)V

    return-object v15
.end method

.method public createLoginRequestWithConfig(Lcom/facebook/login/LoginConfiguration;)Lcom/facebook/login/LoginClient$Request;
    .locals 14

    const-string v0, "loginConfig"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/login/CodeChallengeMethod;->S256:Lcom/facebook/login/CodeChallengeMethod;

    :try_start_0
    sget-object v1, Lcom/facebook/login/PKCEUtil;->INSTANCE:Lcom/facebook/login/PKCEUtil;

    invoke-virtual {p1}, Lcom/facebook/login/LoginConfiguration;->getCodeVerifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/login/PKCEUtil;->generateCodeChallenge(Ljava/lang/String;Lcom/facebook/login/CodeChallengeMethod;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/facebook/login/CodeChallengeMethod;->PLAIN:Lcom/facebook/login/CodeChallengeMethod;

    invoke-virtual {p1}, Lcom/facebook/login/LoginConfiguration;->getCodeVerifier()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v13, v0

    move-object v12, v1

    new-instance v0, Lcom/facebook/login/LoginClient$Request;

    iget-object v3, p0, Lcom/facebook/login/LoginManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    invoke-virtual {p1}, Lcom/facebook/login/LoginConfiguration;->getPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lḓ/㹖/㭲;->䅚(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    iget-object v6, p0, Lcom/facebook/login/LoginManager;->authType:Ljava/lang/String;

    sget-object v1, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v1, "randomUUID().toString()"

    invoke-static {v8, v1}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/facebook/login/LoginManager;->loginTargetApp:Lcom/facebook/login/LoginTargetApp;

    invoke-virtual {p1}, Lcom/facebook/login/LoginConfiguration;->getNonce()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/facebook/login/LoginConfiguration;->getCodeVerifier()Ljava/lang/String;

    move-result-object v11

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/facebook/login/LoginClient$Request;-><init>(Lcom/facebook/login/LoginBehavior;Ljava/util/Set;Lcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginTargetApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/CodeChallengeMethod;)V

    sget-object p1, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {p1}, Lcom/facebook/AccessToken$Companion;->isCurrentAccessTokenActive()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/facebook/login/LoginClient$Request;->setRerequest(Z)V

    iget-object p1, p0, Lcom/facebook/login/LoginManager;->messengerPageId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/facebook/login/LoginClient$Request;->setMessengerPageId(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/facebook/login/LoginManager;->resetMessengerState:Z

    invoke-virtual {v0, p1}, Lcom/facebook/login/LoginClient$Request;->setResetMessengerState(Z)V

    iget-boolean p1, p0, Lcom/facebook/login/LoginManager;->isFamilyLogin:Z

    invoke-virtual {v0, p1}, Lcom/facebook/login/LoginClient$Request;->setFamilyLogin(Z)V

    iget-boolean p1, p0, Lcom/facebook/login/LoginManager;->shouldSkipAccountDeduplication:Z

    invoke-virtual {v0, p1}, Lcom/facebook/login/LoginClient$Request;->setShouldSkipAccountDeduplication(Z)V

    return-object v0
.end method

.method public createReauthorizeRequest()Lcom/facebook/login/LoginClient$Request;
    .locals 15

    new-instance v14, Lcom/facebook/login/LoginClient$Request;

    sget-object v1, Lcom/facebook/login/LoginBehavior;->DIALOG_ONLY:Lcom/facebook/login/LoginBehavior;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    sget-object v0, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v0, "randomUUID().toString()"

    invoke-static {v6, v0}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/facebook/login/LoginManager;->loginTargetApp:Lcom/facebook/login/LoginTargetApp;

    const-string v4, "reauthorize"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x780

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/facebook/login/LoginClient$Request;-><init>(Lcom/facebook/login/LoginBehavior;Ljava/util/Set;Lcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginTargetApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/CodeChallengeMethod;ILḓ/ᓭ/㺴/ᆻ;)V

    iget-boolean v0, p0, Lcom/facebook/login/LoginManager;->isFamilyLogin:Z

    invoke-virtual {v14, v0}, Lcom/facebook/login/LoginClient$Request;->setFamilyLogin(Z)V

    iget-boolean v0, p0, Lcom/facebook/login/LoginManager;->shouldSkipAccountDeduplication:Z

    invoke-virtual {v14, v0}, Lcom/facebook/login/LoginClient$Request;->setShouldSkipAccountDeduplication(Z)V

    return-object v14
.end method

.method public final getAuthType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/LoginManager;->authType:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultAudience()Lcom/facebook/login/DefaultAudience;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    return-object v0
.end method

.method public getFacebookActivityIntent(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;
    .locals 4

    const-string v0, "request"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/facebook/FacebookActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getLoginBehavior()Lcom/facebook/login/LoginBehavior;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "com.facebook.LoginFragment:Request"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v1
.end method

.method public final getLoginBehavior()Lcom/facebook/login/LoginBehavior;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/LoginManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    return-object v0
.end method

.method public final getLoginTargetApp()Lcom/facebook/login/LoginTargetApp;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/LoginManager;->loginTargetApp:Lcom/facebook/login/LoginTargetApp;

    return-object v0
.end method

.method public final getShouldSkipAccountDeduplication()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/login/LoginManager;->shouldSkipAccountDeduplication:Z

    return v0
.end method

.method public final isFamilyLogin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/login/LoginManager;->isFamilyLogin:Z

    return v0
.end method

.method public final logIn(Landroid/app/Activity;Lcom/facebook/login/LoginConfiguration;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginConfig"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, L㚬/உ/ḓ/㺴;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/login/LoginManager;->TAG:Ljava/lang/String;

    const-string v1, "You\'re calling logging in Facebook with an activity supports androidx activity result APIs. Please follow our document to upgrade to new APIs to avoid overriding onActivityResult()."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequestWithConfig(Lcom/facebook/login/LoginConfiguration;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p2

    new-instance v0, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;

    invoke-direct {v0, p1}, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public final logIn(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p2, v1, v2, v1}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;Ljava/lang/String;ILḓ/ᓭ/㺴/ᆻ;)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/login/LoginManager;->logIn(Landroid/app/Activity;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method public final logIn(Landroid/app/Activity;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p2, v1, v2, v1}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;Ljava/lang/String;ILḓ/ᓭ/㺴/ᆻ;)V

    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginManager;->createLoginRequestWithConfig(Lcom/facebook/login/LoginConfiguration;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p2

    if-eqz p3, :cond_0

    invoke-virtual {p2, p3}, Lcom/facebook/login/LoginClient$Request;->setAuthId(Ljava/lang/String;)V

    :cond_0
    new-instance p3, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;

    invoke-direct {p3, p1}, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, p3, p2}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public final logIn(Landroid/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logIn(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V

    return-void
.end method

.method public final logIn(Landroid/app/Fragment;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/login/LoginManager;->logIn(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;Ljava/lang/String;)V

    return-void
.end method

.method public final logIn(Landroidx/fragment/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logIn(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V

    return-void
.end method

.method public final logIn(Landroidx/fragment/app/Fragment;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/login/LoginManager;->logIn(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;Ljava/lang/String;)V

    return-void
.end method

.method public final logIn(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/login/LoginConfiguration;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginConfig"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequestWithConfig(Lcom/facebook/login/LoginConfiguration;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p2

    new-instance v0, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;

    invoke-direct {v0, p1}, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public final logIn(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/FragmentWrapper;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p2, v1, v2, v1}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;Ljava/lang/String;ILḓ/ᓭ/㺴/ᆻ;)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/login/LoginManager;->logIn(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method public final logIn(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/FragmentWrapper;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p2, v1, v2, v1}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;Ljava/lang/String;ILḓ/ᓭ/㺴/ᆻ;)V

    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginManager;->createLoginRequestWithConfig(Lcom/facebook/login/LoginConfiguration;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p2

    if-eqz p3, :cond_0

    invoke-virtual {p2, p3}, Lcom/facebook/login/LoginClient$Request;->setAuthId(Ljava/lang/String;)V

    :cond_0
    new-instance p3, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;

    invoke-direct {p3, p1}, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-direct {p0, p3, p2}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public final logIn(L㚬/உ/ḓ/㺴;Lcom/facebook/CallbackManager;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u0b89/\u1e13/\u3eb4;",
            "Lcom/facebook/CallbackManager;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activityResultRegistryOwner"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackManager"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p3, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p3, v1, v2, v1}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;Ljava/lang/String;ILḓ/ᓭ/㺴/ᆻ;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/login/LoginManager;->logIn(L㚬/உ/ḓ/㺴;Lcom/facebook/CallbackManager;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method public final logIn(L㚬/உ/ḓ/㺴;Lcom/facebook/CallbackManager;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u0b89/\u1e13/\u3eb4;",
            "Lcom/facebook/CallbackManager;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "activityResultRegistryOwner"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackManager"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p3, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p3, v1, v2, v1}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;Ljava/lang/String;ILḓ/ᓭ/㺴/ᆻ;)V

    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginManager;->createLoginRequestWithConfig(Lcom/facebook/login/LoginConfiguration;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p3

    if-eqz p4, :cond_0

    invoke-virtual {p3, p4}, Lcom/facebook/login/LoginClient$Request;->setAuthId(Ljava/lang/String;)V

    :cond_0
    new-instance p4, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;

    invoke-direct {p4, p1, p2}, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;-><init>(L㚬/உ/ḓ/㺴;Lcom/facebook/CallbackManager;)V

    invoke-direct {p0, p4, p3}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public final logInWithConfiguration(Landroidx/fragment/app/Fragment;Lcom/facebook/login/LoginConfiguration;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginConfig"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->loginWithConfiguration(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method public final logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->validatePublishPermissions(Ljava/util/Collection;)V

    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p2, v1, v2, v1}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;Ljava/lang/String;ILḓ/ᓭ/㺴/ᆻ;)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/login/LoginManager;->loginWithConfiguration(Landroid/app/Activity;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method public final logInWithPublishPermissions(Landroid/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V

    return-void
.end method

.method public final logInWithPublishPermissions(Landroidx/fragment/app/Fragment;Lcom/facebook/CallbackManager;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/facebook/CallbackManager;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackManager"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p3, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(L㚬/உ/ḓ/㺴;Lcom/facebook/CallbackManager;Ljava/util/Collection;)V

    return-void

    :cond_0
    new-instance p2, Lcom/facebook/FacebookException;

    const-string p3, "Cannot obtain activity context on the fragment "

    invoke-static {p3, p1}, Lḓ/ᓭ/㺴/ಫ;->ಫ(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final logInWithPublishPermissions(Landroidx/fragment/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V

    return-void
.end method

.method public final logInWithPublishPermissions(L㚬/உ/ḓ/㺴;Lcom/facebook/CallbackManager;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u0b89/\u1e13/\u3eb4;",
            "Lcom/facebook/CallbackManager;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activityResultRegistryOwner"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackManager"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p3, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/facebook/login/LoginManager;->validatePublishPermissions(Ljava/util/Collection;)V

    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p3, v1, v2, v1}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;Ljava/lang/String;ILḓ/ᓭ/㺴/ᆻ;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/login/LoginManager;->logIn(L㚬/உ/ḓ/㺴;Lcom/facebook/CallbackManager;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method public final logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->validateReadPermissions(Ljava/util/Collection;)V

    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p2, v1, v2, v1}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;Ljava/lang/String;ILḓ/ᓭ/㺴/ᆻ;)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/login/LoginManager;->logIn(Landroid/app/Activity;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method public final logInWithReadPermissions(Landroid/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V

    return-void
.end method

.method public final logInWithReadPermissions(Landroidx/fragment/app/Fragment;Lcom/facebook/CallbackManager;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/facebook/CallbackManager;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackManager"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p3, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(L㚬/உ/ḓ/㺴;Lcom/facebook/CallbackManager;Ljava/util/Collection;)V

    return-void

    :cond_0
    new-instance p2, Lcom/facebook/FacebookException;

    const-string p3, "Cannot obtain activity context on the fragment "

    invoke-static {p3, p1}, Lḓ/ᓭ/㺴/ಫ;->ಫ(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final logInWithReadPermissions(Landroidx/fragment/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Lcom/facebook/internal/FragmentWrapper;Ljava/util/Collection;)V

    return-void
.end method

.method public final logInWithReadPermissions(L㚬/உ/ḓ/㺴;Lcom/facebook/CallbackManager;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u0b89/\u1e13/\u3eb4;",
            "Lcom/facebook/CallbackManager;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activityResultRegistryOwner"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackManager"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p3, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/facebook/login/LoginManager;->validateReadPermissions(Ljava/util/Collection;)V

    new-instance v0, Lcom/facebook/login/LoginConfiguration;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p3, v1, v2, v1}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;Ljava/lang/String;ILḓ/ᓭ/㺴/ᆻ;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/login/LoginManager;->logIn(L㚬/உ/ḓ/㺴;Lcom/facebook/CallbackManager;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method public logOut()V
    .locals 2

    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/AccessToken$Companion;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    sget-object v0, Lcom/facebook/AuthenticationToken;->Companion:Lcom/facebook/AuthenticationToken$Companion;

    invoke-virtual {v0, v1}, Lcom/facebook/AuthenticationToken$Companion;->setCurrentAuthenticationToken(Lcom/facebook/AuthenticationToken;)V

    sget-object v0, Lcom/facebook/Profile;->Companion:Lcom/facebook/Profile$Companion;

    invoke-virtual {v0, v1}, Lcom/facebook/Profile$Companion;->setCurrentProfile(Lcom/facebook/Profile;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/login/LoginManager;->setExpressLoginStatus(Z)V

    return-void
.end method

.method public final loginWithConfiguration(Landroid/app/Activity;Lcom/facebook/login/LoginConfiguration;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginConfig"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/LoginManager;->logIn(Landroid/app/Activity;Lcom/facebook/login/LoginConfiguration;)V

    return-void
.end method

.method public final onActivityResult(ILandroid/content/Intent;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/facebook/login/LoginManager;->onActivityResult$default(Lcom/facebook/login/LoginManager;ILandroid/content/Intent;Lcom/facebook/FacebookCallback;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onActivityResult(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/login/LoginResult;",
            ">;)Z"
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    sget-object v2, Lcom/facebook/login/LoginClient$Result$Code;->ERROR:Lcom/facebook/login/LoginClient$Result$Code;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    const-class v6, Lcom/facebook/login/LoginClient$Result;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const-string v6, "com.facebook.LoginFragment:Result"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/login/LoginClient$Result;

    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/facebook/login/LoginClient$Result;->request:Lcom/facebook/login/LoginClient$Request;

    iget-object v6, v1, Lcom/facebook/login/LoginClient$Result;->code:Lcom/facebook/login/LoginClient$Result$Code;

    const/4 v7, -0x1

    if-eq v0, v7, :cond_1

    if-eqz v0, :cond_0

    move-object v0, v4

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v0, v4

    move-object v7, v0

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/facebook/login/LoginClient$Result$Code;->SUCCESS:Lcom/facebook/login/LoginClient$Result$Code;

    if-ne v6, v0, :cond_2

    iget-object v0, v1, Lcom/facebook/login/LoginClient$Result;->token:Lcom/facebook/AccessToken;

    iget-object v7, v1, Lcom/facebook/login/LoginClient$Result;->authenticationToken:Lcom/facebook/AuthenticationToken;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/facebook/FacebookAuthorizationException;

    iget-object v7, v1, Lcom/facebook/login/LoginClient$Result;->errorMessage:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/facebook/FacebookAuthorizationException;-><init>(Ljava/lang/String;)V

    move-object v7, v4

    move-object v4, v0

    move-object v0, v7

    :goto_0
    iget-object v1, v1, Lcom/facebook/login/LoginClient$Result;->loggingExtras:Ljava/util/Map;

    move-object v8, v1

    move v13, v5

    move-object v1, v7

    move-object v7, v6

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    sget-object v2, Lcom/facebook/login/LoginClient$Result$Code;->CANCEL:Lcom/facebook/login/LoginClient$Result$Code;

    move-object v7, v2

    move-object v0, v4

    move-object v1, v0

    move-object v2, v1

    move-object v8, v2

    const/4 v13, 0x1

    goto :goto_1

    :cond_4
    move-object v7, v2

    move-object v0, v4

    move-object v1, v0

    move-object v2, v1

    move-object v8, v2

    const/4 v13, 0x0

    :goto_1
    if-nez v4, :cond_5

    if-nez v0, :cond_5

    if-nez v13, :cond_5

    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "Unexpected call to LoginManager.onActivityResult"

    invoke-direct {v4, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    :cond_5
    move-object v12, v4

    const/4 v10, 0x1

    const/4 v6, 0x0

    move-object v5, p0

    move-object v9, v12

    move-object v11, v2

    invoke-direct/range {v5 .. v11}, Lcom/facebook/login/LoginManager;->logCompleteLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    move-object v8, p0

    move-object v9, v0

    move-object v10, v1

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Lcom/facebook/login/LoginManager;->finishLogin(Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;Lcom/facebook/login/LoginClient$Request;Lcom/facebook/FacebookException;ZLcom/facebook/FacebookCallback;)V

    return v3
.end method

.method public final reauthorizeDataAccess(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/login/LoginManager;->createReauthorizeRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    new-instance v1, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;

    invoke-direct {v1, p1}, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public final reauthorizeDataAccess(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/login/LoginManager;->reauthorizeDataAccess(Lcom/facebook/internal/FragmentWrapper;)V

    return-void
.end method

.method public final registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/login/LoginResult;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/facebook/internal/CallbackManagerImpl;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/facebook/internal/CallbackManagerImpl;

    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    new-instance v1, L㺴/உ/㫏/ბ;

    invoke-direct {v1, p0, p2}, L㺴/உ/㫏/ბ;-><init>(Lcom/facebook/login/LoginManager;Lcom/facebook/FacebookCallback;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    return-void

    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string p2, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final resolveError(Landroid/app/Activity;Lcom/facebook/GraphResponse;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;

    invoke-direct {v0, p1}, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequestFromResponse(Lcom/facebook/GraphResponse;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public final resolveError(Landroid/app/Fragment;Lcom/facebook/GraphResponse;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->resolveError(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/GraphResponse;)V

    return-void
.end method

.method public final resolveError(Landroidx/fragment/app/Fragment;Lcom/facebook/CallbackManager;Lcom/facebook/GraphResponse;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackManager"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p3, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/login/LoginManager;->resolveError(L㚬/உ/ḓ/㺴;Lcom/facebook/CallbackManager;Lcom/facebook/GraphResponse;)V

    return-void

    :cond_0
    new-instance p2, Lcom/facebook/FacebookException;

    const-string p3, "Cannot obtain activity context on the fragment "

    invoke-static {p3, p1}, Lḓ/ᓭ/㺴/ಫ;->ಫ(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final resolveError(Landroidx/fragment/app/Fragment;Lcom/facebook/GraphResponse;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->resolveError(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/GraphResponse;)V

    return-void
.end method

.method public final resolveError(L㚬/உ/ḓ/㺴;Lcom/facebook/CallbackManager;Lcom/facebook/GraphResponse;)V
    .locals 1

    const-string v0, "activityResultRegistryOwner"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackManager"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p3, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;

    invoke-direct {v0, p1, p2}, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;-><init>(L㚬/உ/ḓ/㺴;Lcom/facebook/CallbackManager;)V

    invoke-direct {p0, p3}, Lcom/facebook/login/LoginManager;->createLoginRequestFromResponse(Lcom/facebook/GraphResponse;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public final retrieveLoginStatus(Landroid/content/Context;JLcom/facebook/LoginStatusCallback;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseCallback"

    invoke-static {p4, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p4, p2, p3}, Lcom/facebook/login/LoginManager;->retrieveLoginStatusImpl(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;J)V

    return-void
.end method

.method public final retrieveLoginStatus(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseCallback"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/facebook/login/LoginManager;->retrieveLoginStatus(Landroid/content/Context;JLcom/facebook/LoginStatusCallback;)V

    return-void
.end method

.method public final setAuthType(Ljava/lang/String;)Lcom/facebook/login/LoginManager;
    .locals 1

    const-string v0, "authType"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/login/LoginManager;->authType:Ljava/lang/String;

    return-object p0
.end method

.method public final setDefaultAudience(Lcom/facebook/login/DefaultAudience;)Lcom/facebook/login/LoginManager;
    .locals 1

    const-string v0, "defaultAudience"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    return-object p0
.end method

.method public final setFamilyLogin(Z)Lcom/facebook/login/LoginManager;
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/login/LoginManager;->isFamilyLogin:Z

    return-object p0
.end method

.method public final setLoginBehavior(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;
    .locals 1

    const-string v0, "loginBehavior"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/login/LoginManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    return-object p0
.end method

.method public final setLoginTargetApp(Lcom/facebook/login/LoginTargetApp;)Lcom/facebook/login/LoginManager;
    .locals 1

    const-string v0, "targetApp"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/login/LoginManager;->loginTargetApp:Lcom/facebook/login/LoginTargetApp;

    return-object p0
.end method

.method public final setMessengerPageId(Ljava/lang/String;)Lcom/facebook/login/LoginManager;
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/LoginManager;->messengerPageId:Ljava/lang/String;

    return-object p0
.end method

.method public final setResetMessengerState(Z)Lcom/facebook/login/LoginManager;
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/login/LoginManager;->resetMessengerState:Z

    return-object p0
.end method

.method public final setShouldSkipAccountDeduplication(Z)Lcom/facebook/login/LoginManager;
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/login/LoginManager;->shouldSkipAccountDeduplication:Z

    return-object p0
.end method

.method public final unregisterCallback(Lcom/facebook/CallbackManager;)V
    .locals 1

    instance-of v0, p1, Lcom/facebook/internal/CallbackManagerImpl;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/facebook/internal/CallbackManagerImpl;

    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/internal/CallbackManagerImpl;->unregisterCallback(I)V

    return-void

    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
