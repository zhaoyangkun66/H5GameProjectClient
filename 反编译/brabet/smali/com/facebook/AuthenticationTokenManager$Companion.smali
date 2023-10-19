.class public final Lcom/facebook/AuthenticationTokenManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AuthenticationTokenManager;
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

    invoke-direct {p0}, Lcom/facebook/AuthenticationTokenManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/facebook/AuthenticationTokenManager;
    .locals 3

    invoke-static {}, Lcom/facebook/AuthenticationTokenManager;->access$getInstanceField$cp()Lcom/facebook/AuthenticationTokenManager;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/AuthenticationTokenManager;->access$getInstanceField$cp()Lcom/facebook/AuthenticationTokenManager;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, L㚬/ᓭ/உ/உ;->䂻(Landroid/content/Context;)L㚬/ᓭ/உ/உ;

    move-result-object v0

    const-string v1, "getInstance(applicationContext)"

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/facebook/AuthenticationTokenCache;

    invoke-direct {v1}, Lcom/facebook/AuthenticationTokenCache;-><init>()V

    new-instance v2, Lcom/facebook/AuthenticationTokenManager;

    invoke-direct {v2, v0, v1}, Lcom/facebook/AuthenticationTokenManager;-><init>(L㚬/ᓭ/உ/உ;Lcom/facebook/AuthenticationTokenCache;)V

    sget-object v0, Lcom/facebook/AuthenticationTokenManager;->Companion:Lcom/facebook/AuthenticationTokenManager$Companion;

    invoke-static {v2}, Lcom/facebook/AuthenticationTokenManager;->access$setInstanceField$cp(Lcom/facebook/AuthenticationTokenManager;)V
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
