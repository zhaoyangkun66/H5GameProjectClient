.class public final Lcom/facebook/internal/CallbackManagerImpl$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/CallbackManagerImpl;
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

    invoke-direct {p0}, Lcom/facebook/internal/CallbackManagerImpl$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$runStaticCallback(Lcom/facebook/internal/CallbackManagerImpl$Companion;IILandroid/content/Intent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/internal/CallbackManagerImpl$Companion;->runStaticCallback(IILandroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method private final declared-synchronized getStaticCallback(I)Lcom/facebook/internal/CallbackManagerImpl$Callback;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/internal/CallbackManagerImpl;->access$getStaticCallbacks$cp()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/internal/CallbackManagerImpl$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final runStaticCallback(IILandroid/content/Intent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/internal/CallbackManagerImpl$Companion;->getStaticCallback(I)Lcom/facebook/internal/CallbackManagerImpl$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3}, Lcom/facebook/internal/CallbackManagerImpl$Callback;->onActivityResult(ILandroid/content/Intent;)Z

    move-result p1

    :goto_0
    return p1
.end method


# virtual methods
.method public final declared-synchronized registerStaticCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "callback"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/internal/CallbackManagerImpl;->access$getStaticCallbacks$cp()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/facebook/internal/CallbackManagerImpl;->access$getStaticCallbacks$cp()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
