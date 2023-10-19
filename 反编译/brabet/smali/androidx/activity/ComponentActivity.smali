.class public Landroidx/activity/ComponentActivity;
.super Landroidx/core/app/ComponentActivity;
.source ""

# interfaces
.implements L㚬/ἥ/ℓ;
.implements L㚬/ἥ/㖪;
.implements L㚬/㞘/㚬;
.implements L㚬/உ/㚬;
.implements L㚬/உ/ḓ/㺴;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/ComponentActivity$㚬;
    }
.end annotation


# instance fields
.field private mActivityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;

.field private mContentLayoutId:I

.field public final mContextAwareHelper:L㚬/உ/㺴/உ;

.field private mDefaultFactory:L㚬/ἥ/㭲$䂻;

.field private final mLifecycleRegistry:L㚬/ἥ/ㄏ;

.field private final mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

.field public final mSavedStateRegistryController:L㚬/㞘/䂻;

.field private mViewModelStore:L㚬/ἥ/ḙ;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroidx/core/app/ComponentActivity;-><init>()V

    new-instance v0, L㚬/உ/㺴/உ;

    invoke-direct {v0}, L㚬/உ/㺴/உ;-><init>()V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mContextAwareHelper:L㚬/உ/㺴/உ;

    new-instance v0, L㚬/ἥ/ㄏ;

    invoke-direct {v0, p0}, L㚬/ἥ/ㄏ;-><init>(L㚬/ἥ/ℓ;)V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mLifecycleRegistry:L㚬/ἥ/ㄏ;

    invoke-static {p0}, L㚬/㞘/䂻;->உ(L㚬/㞘/㚬;)L㚬/㞘/䂻;

    move-result-object v0

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mSavedStateRegistryController:L㚬/㞘/䂻;

    new-instance v0, Landroidx/activity/OnBackPressedDispatcher;

    new-instance v1, Landroidx/activity/ComponentActivity$உ;

    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$உ;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v0, v1}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroidx/activity/ComponentActivity$䂻;

    invoke-direct {v0, p0}, Landroidx/activity/ComponentActivity$䂻;-><init>(Landroidx/activity/ComponentActivity;)V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()L㚬/ἥ/ḓ;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()L㚬/ἥ/ḓ;

    move-result-object v2

    new-instance v3, Landroidx/activity/ComponentActivity$3;

    invoke-direct {v3, p0}, Landroidx/activity/ComponentActivity$3;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {v2, v3}, L㚬/ἥ/ḓ;->உ(L㚬/ἥ/ᆻ;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()L㚬/ἥ/ḓ;

    move-result-object v2

    new-instance v3, Landroidx/activity/ComponentActivity$4;

    invoke-direct {v3, p0}, Landroidx/activity/ComponentActivity$4;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {v2, v3}, L㚬/ἥ/ḓ;->உ(L㚬/ἥ/ᆻ;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()L㚬/ἥ/ḓ;

    move-result-object v2

    new-instance v3, Landroidx/activity/ComponentActivity$5;

    invoke-direct {v3, p0}, Landroidx/activity/ComponentActivity$5;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {v2, v3}, L㚬/ἥ/ḓ;->உ(L㚬/ἥ/ᆻ;)V

    if-gt v1, v0, :cond_1

    const/16 v1, 0x17

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()L㚬/ἥ/ḓ;

    move-result-object v0

    new-instance v1, Landroidx/activity/ImmLeaksCleaner;

    invoke-direct {v1, p0}, Landroidx/activity/ImmLeaksCleaner;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, L㚬/ἥ/ḓ;->உ(L㚬/ἥ/ᆻ;)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getLifecycle() returned null in ComponentActivity\'s constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    iput p1, p0, Landroidx/activity/ComponentActivity;->mContentLayoutId:I

    return-void
.end method

.method public static synthetic access$001(Landroidx/activity/ComponentActivity;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method private initViewTreeOwners()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, L㚬/ἥ/㢏;->உ(Landroid/view/View;L㚬/ἥ/ℓ;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, L㚬/ἥ/ม;->உ(Landroid/view/View;L㚬/ἥ/㖪;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, L㚬/㞘/㺴;->உ(Landroid/view/View;L㚬/㞘/㚬;)V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness",
                "MissingNullability"
            }
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness",
                "MissingNullability"
            }
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;->initViewTreeOwners()V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final addOnContextAvailableListener(L㚬/உ/㺴/䂻;)V
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mContextAwareHelper:L㚬/உ/㺴/உ;

    invoke-virtual {v0, p1}, L㚬/உ/㺴/உ;->உ(L㚬/உ/㺴/䂻;)V

    return-void
.end method

.method public ensureViewModelStore()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:L㚬/ἥ/ḙ;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/ComponentActivity$㚬;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/activity/ComponentActivity$㚬;->䂻:L㚬/ἥ/ḙ;

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:L㚬/ἥ/ḙ;

    :cond_0
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:L㚬/ἥ/ḙ;

    if-nez v0, :cond_1

    new-instance v0, L㚬/ἥ/ḙ;

    invoke-direct {v0}, L㚬/ἥ/ḙ;-><init>()V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:L㚬/ἥ/ḙ;

    :cond_1
    return-void
.end method

.method public final getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;

    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()L㚬/ἥ/㭲$䂻;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mDefaultFactory:L㚬/ἥ/㭲$䂻;

    if-nez v0, :cond_1

    new-instance v0, L㚬/ἥ/㲝;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, p0, v2}, L㚬/ἥ/㲝;-><init>(Landroid/app/Application;L㚬/㞘/㚬;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mDefaultFactory:L㚬/ἥ/㭲$䂻;

    :cond_1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mDefaultFactory:L㚬/ἥ/㭲$䂻;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/ComponentActivity$㚬;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/activity/ComponentActivity$㚬;->உ:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLifecycle()L㚬/ἥ/ḓ;
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mLifecycleRegistry:L㚬/ἥ/ㄏ;

    return-object v0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public final getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mSavedStateRegistryController:L㚬/㞘/䂻;

    invoke-virtual {v0}, L㚬/㞘/䂻;->䂻()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()L㚬/ἥ/ḙ;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->ensureViewModelStore()V

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:L㚬/ἥ/ḙ;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/activity/result/ActivityResultRegistry;->䂻(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->㚬()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mSavedStateRegistryController:L㚬/㞘/䂻;

    invoke-virtual {v0, p1}, L㚬/㞘/䂻;->㚬(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mContextAwareHelper:L㚬/உ/㺴/உ;

    invoke-virtual {v0, p0}, L㚬/உ/㺴/உ;->㚬(Landroid/content/Context;)V

    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultRegistry;->ᆻ(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/lifecycle/ReportFragment;->䆀(Landroid/app/Activity;)V

    iget p1, p0, Landroidx/activity/ComponentActivity;->mContentLayoutId:I

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2, v1}, Landroidx/activity/result/ActivityResultRegistry;->䂻(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:L㚬/ἥ/ḙ;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/activity/ComponentActivity$㚬;

    if-eqz v2, :cond_0

    iget-object v1, v2, Landroidx/activity/ComponentActivity$㚬;->䂻:L㚬/ἥ/ḙ;

    :cond_0
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v2, Landroidx/activity/ComponentActivity$㚬;

    invoke-direct {v2}, Landroidx/activity/ComponentActivity$㚬;-><init>()V

    iput-object v0, v2, Landroidx/activity/ComponentActivity$㚬;->உ:Ljava/lang/Object;

    iput-object v1, v2, Landroidx/activity/ComponentActivity$㚬;->䂻:L㚬/ἥ/ḙ;

    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()L㚬/ἥ/ḓ;

    move-result-object v0

    instance-of v1, v0, L㚬/ἥ/ㄏ;

    if-eqz v1, :cond_0

    check-cast v0, L㚬/ἥ/ㄏ;

    sget-object v1, L㚬/ἥ/ḓ$㚬;->㺴:L㚬/ἥ/ḓ$㚬;

    invoke-virtual {v0, v1}, L㚬/ἥ/ㄏ;->ᓭ(L㚬/ἥ/ḓ$㚬;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mSavedStateRegistryController:L㚬/㞘/䂻;

    invoke-virtual {v0, p1}, L㚬/㞘/䂻;->㺴(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultRegistry;->ℓ(Landroid/os/Bundle;)V

    return-void
.end method

.method public peekAvailableContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mContextAwareHelper:L㚬/உ/㺴/உ;

    invoke-virtual {v0}, L㚬/உ/㺴/உ;->㺴()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final registerForActivityResult(L㚬/உ/ḓ/䆀/உ;Landroidx/activity/result/ActivityResultRegistry;L㚬/உ/ḓ/䂻;)L㚬/உ/ḓ/㚬;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "L\u36ac/\u0b89/\u1e13/\u4180/\u0b89<",
            "TI;TO;>;",
            "Landroidx/activity/result/ActivityResultRegistry;",
            "L\u36ac/\u0b89/\u1e13/\u40bb<",
            "TO;>;)",
            "L\u36ac/\u0b89/\u1e13/\u36ac<",
            "TI;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activity_rq#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/activity/ComponentActivity;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p0, p1, p3}, Landroidx/activity/result/ActivityResultRegistry;->ಫ(Ljava/lang/String;L㚬/ἥ/ℓ;L㚬/உ/ḓ/䆀/உ;L㚬/உ/ḓ/䂻;)L㚬/உ/ḓ/㚬;

    move-result-object p1

    return-object p1
.end method

.method public final registerForActivityResult(L㚬/உ/ḓ/䆀/உ;L㚬/உ/ḓ/䂻;)L㚬/உ/ḓ/㚬;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "L\u36ac/\u0b89/\u1e13/\u4180/\u0b89<",
            "TI;TO;>;",
            "L\u36ac/\u0b89/\u1e13/\u40bb<",
            "TO;>;)",
            "L\u36ac/\u0b89/\u1e13/\u36ac<",
            "TI;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/result/ActivityResultRegistry;

    invoke-virtual {p0, p1, v0, p2}, Landroidx/activity/ComponentActivity;->registerForActivityResult(L㚬/உ/ḓ/䆀/உ;Landroidx/activity/result/ActivityResultRegistry;L㚬/உ/ḓ/䂻;)L㚬/உ/ḓ/㚬;

    move-result-object p1

    return-object p1
.end method

.method public final removeOnContextAvailableListener(L㚬/உ/㺴/䂻;)V
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mContextAwareHelper:L㚬/உ/㺴/உ;

    invoke-virtual {v0, p1}, L㚬/உ/㺴/உ;->ḓ(L㚬/உ/㺴/䂻;)V

    return-void
.end method

.method public reportFullyDrawn()V
    .locals 2

    :try_start_0
    invoke-static {}, L㚬/㭲/உ;->㺴()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportFullyDrawn() for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, L㚬/㭲/உ;->உ(Ljava/lang/String;)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_1

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->reportFullyDrawn()V

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    const-string v0, "android.permission.UPDATE_DEVICE_STATS"

    invoke-static {p0, v0}, L㚬/ℓ/ḓ/உ;->உ(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {}, L㚬/㭲/உ;->䂻()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, L㚬/㭲/உ;->䂻()V

    throw v0
.end method

.method public setContentView(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;->initViewTreeOwners()V

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness",
                "MissingNullability"
            }
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;->initViewTreeOwners()V

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness",
                "MissingNullability"
            }
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness",
                "MissingNullability"
            }
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;->initViewTreeOwners()V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 0
    .param p1    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method
