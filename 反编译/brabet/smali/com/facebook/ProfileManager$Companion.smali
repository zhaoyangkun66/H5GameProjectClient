.class public final Lcom/facebook/ProfileManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ProfileManager;
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

    invoke-direct {p0}, Lcom/facebook/ProfileManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized getInstance()Lcom/facebook/ProfileManager;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/ProfileManager;->access$getInstance$cp()Lcom/facebook/ProfileManager;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, L㚬/ᓭ/உ/உ;->䂻(Landroid/content/Context;)L㚬/ᓭ/உ/உ;

    move-result-object v0

    const-string v1, "getInstance(applicationContext)"

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/facebook/ProfileManager;

    new-instance v2, Lcom/facebook/ProfileCache;

    invoke-direct {v2}, Lcom/facebook/ProfileCache;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/facebook/ProfileManager;-><init>(L㚬/ᓭ/உ/உ;Lcom/facebook/ProfileCache;)V

    invoke-static {v1}, Lcom/facebook/ProfileManager;->access$setInstance$cp(Lcom/facebook/ProfileManager;)V

    :cond_0
    invoke-static {}, Lcom/facebook/ProfileManager;->access$getInstance$cp()Lcom/facebook/ProfileManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    const-string v0, "instance"

    invoke-static {v0}, Lḓ/ᓭ/㺴/ಫ;->ཇ(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
