.class public final Lcom/facebook/login/DeviceLoginManager;
.super Lcom/facebook/login/LoginManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/DeviceLoginManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/login/DeviceLoginManager$Companion;

.field private static final instance$delegate:Lḓ/㚬;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u1e13/\u36ac<",
            "Lcom/facebook/login/DeviceLoginManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private deviceAuthTargetUserId:Ljava/lang/String;

.field private deviceRedirectUri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/login/DeviceLoginManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/login/DeviceLoginManager$Companion;-><init>(Lḓ/ᓭ/㺴/ᆻ;)V

    sput-object v0, Lcom/facebook/login/DeviceLoginManager;->Companion:Lcom/facebook/login/DeviceLoginManager$Companion;

    sget-object v0, Lcom/facebook/login/DeviceLoginManager$Companion$instance$2;->INSTANCE:Lcom/facebook/login/DeviceLoginManager$Companion$instance$2;

    invoke-static {v0}, Lḓ/㺴;->உ(Lḓ/ᓭ/㚬/உ;)Lḓ/㚬;

    move-result-object v0

    sput-object v0, Lcom/facebook/login/DeviceLoginManager;->instance$delegate:Lḓ/㚬;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/login/LoginManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lḓ/㚬;
    .locals 3

    const-class v0, Lcom/facebook/login/DeviceLoginManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/login/DeviceLoginManager;->instance$delegate:Lḓ/㚬;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/login/LoginClient$Request;"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/login/DeviceLoginManager;->deviceRedirectUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/login/LoginClient$Request;->setDeviceRedirectUriString(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/facebook/login/DeviceLoginManager;->deviceAuthTargetUserId:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Lcom/facebook/login/LoginClient$Request;->setDeviceAuthTargetUserId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final getDeviceAuthTargetUserId()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/login/DeviceLoginManager;->deviceAuthTargetUserId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final getDeviceRedirectUri()Landroid/net/Uri;
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/login/DeviceLoginManager;->deviceRedirectUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final setDeviceAuthTargetUserId(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/facebook/login/DeviceLoginManager;->deviceAuthTargetUserId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public final setDeviceRedirectUri(Landroid/net/Uri;)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/facebook/login/DeviceLoginManager;->deviceRedirectUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
