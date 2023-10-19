.class public final Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/login/StartActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/LoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidxActivityResultRegistryOwnerStartActivityDelegate"
.end annotation


# instance fields
.field private final activityResultRegistryOwner:L㚬/உ/ḓ/㺴;

.field private final callbackManager:Lcom/facebook/CallbackManager;


# direct methods
.method public constructor <init>(L㚬/உ/ḓ/㺴;Lcom/facebook/CallbackManager;)V
    .locals 1

    const-string v0, "activityResultRegistryOwner"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackManager"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;->activityResultRegistryOwner:L㚬/உ/ḓ/㺴;

    iput-object p2, p0, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;->callbackManager:Lcom/facebook/CallbackManager;

    return-void
.end method

.method private static final startActivityForResult$lambda-0(Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder;Landroid/util/Pair;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$launcherHolder"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;->callbackManager:Lcom/facebook/CallbackManager;

    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v2, "result.first"

    invoke-static {v1, v2}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroid/content/Intent;

    invoke-interface {p0, v0, v1, p2}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    invoke-virtual {p1}, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder;->getLauncher()L㚬/உ/ḓ/㚬;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, L㚬/உ/ḓ/㚬;->㺴()V

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder;->setLauncher(L㚬/உ/ḓ/㚬;)V

    return-void
.end method

.method public static synthetic உ(Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder;Landroid/util/Pair;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;->startActivityForResult$lambda-0(Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder;Landroid/util/Pair;)V

    return-void
.end method


# virtual methods
.method public getActivityContext()Landroid/app/Activity;
    .locals 2

    iget-object v0, p0, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;->activityResultRegistryOwner:L㚬/உ/ḓ/㺴;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 4

    const-string p2, "intent"

    invoke-static {p1, p2}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder;

    invoke-direct {p2}, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder;-><init>()V

    iget-object v0, p0, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;->activityResultRegistryOwner:L㚬/உ/ḓ/㺴;

    invoke-interface {v0}, L㚬/உ/ḓ/㺴;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v0

    new-instance v1, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$1;

    invoke-direct {v1}, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$1;-><init>()V

    new-instance v2, L㺴/உ/㫏/ἥ;

    invoke-direct {v2, p0, p2}, L㺴/உ/㫏/ἥ;-><init>(Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder;)V

    const-string v3, "facebook-login"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/activity/result/ActivityResultRegistry;->ㄏ(Ljava/lang/String;L㚬/உ/ḓ/䆀/உ;L㚬/உ/ḓ/䂻;)L㚬/உ/ḓ/㚬;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder;->setLauncher(L㚬/உ/ḓ/㚬;)V

    invoke-virtual {p2}, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder;->getLauncher()L㚬/உ/ḓ/㚬;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, L㚬/உ/ḓ/㚬;->䂻(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
