.class public final Lcom/facebook/login/CustomTabPrefetchHelper;
.super L㚬/㺴/䂻/㺴;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/CustomTabPrefetchHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/login/CustomTabPrefetchHelper$Companion;

.field private static client:L㚬/㺴/䂻/䂻;

.field private static final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static session:L㚬/㺴/䂻/ḓ;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/login/CustomTabPrefetchHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/login/CustomTabPrefetchHelper$Companion;-><init>(Lḓ/ᓭ/㺴/ᆻ;)V

    sput-object v0, Lcom/facebook/login/CustomTabPrefetchHelper;->Companion:Lcom/facebook/login/CustomTabPrefetchHelper$Companion;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/facebook/login/CustomTabPrefetchHelper;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, L㚬/㺴/䂻/㺴;-><init>()V

    return-void
.end method

.method public static final synthetic access$getClient$cp()L㚬/㺴/䂻/䂻;
    .locals 1

    sget-object v0, Lcom/facebook/login/CustomTabPrefetchHelper;->client:L㚬/㺴/䂻/䂻;

    return-object v0
.end method

.method public static final synthetic access$getLock$cp()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    sget-object v0, Lcom/facebook/login/CustomTabPrefetchHelper;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public static final synthetic access$getSession$cp()L㚬/㺴/䂻/ḓ;
    .locals 1

    sget-object v0, Lcom/facebook/login/CustomTabPrefetchHelper;->session:L㚬/㺴/䂻/ḓ;

    return-object v0
.end method

.method public static final synthetic access$setSession$cp(L㚬/㺴/䂻/ḓ;)V
    .locals 0

    sput-object p0, Lcom/facebook/login/CustomTabPrefetchHelper;->session:L㚬/㺴/䂻/ḓ;

    return-void
.end method

.method public static final getPreparedSessionOnce()L㚬/㺴/䂻/ḓ;
    .locals 1

    sget-object v0, Lcom/facebook/login/CustomTabPrefetchHelper;->Companion:Lcom/facebook/login/CustomTabPrefetchHelper$Companion;

    invoke-virtual {v0}, Lcom/facebook/login/CustomTabPrefetchHelper$Companion;->getPreparedSessionOnce()L㚬/㺴/䂻/ḓ;

    move-result-object v0

    return-object v0
.end method

.method public static final mayLaunchUrl(Landroid/net/Uri;)V
    .locals 1

    sget-object v0, Lcom/facebook/login/CustomTabPrefetchHelper;->Companion:Lcom/facebook/login/CustomTabPrefetchHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/login/CustomTabPrefetchHelper$Companion;->mayLaunchUrl(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;L㚬/㺴/䂻/䂻;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "newClient"

    invoke-static {p2, p1}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, L㚬/㺴/䂻/䂻;->㺴(J)Z

    sget-object p1, Lcom/facebook/login/CustomTabPrefetchHelper;->Companion:Lcom/facebook/login/CustomTabPrefetchHelper$Companion;

    sput-object p2, Lcom/facebook/login/CustomTabPrefetchHelper;->client:L㚬/㺴/䂻/䂻;

    invoke-static {p1}, Lcom/facebook/login/CustomTabPrefetchHelper$Companion;->access$prepareSession(Lcom/facebook/login/CustomTabPrefetchHelper$Companion;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
