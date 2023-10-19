.class public Landroidx/fragment/app/FragmentActivity;
.super Landroidx/activity/ComponentActivity;
.source ""

# interfaces
.implements L㚬/ℓ/㺴/உ$㚬;
.implements L㚬/ℓ/㺴/உ$ḓ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentActivity$㚬;
    }
.end annotation


# static fields
.field public static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"


# instance fields
.field public mCreated:Z

.field public final mFragmentLifecycleRegistry:L㚬/ἥ/ㄏ;

.field public final mFragments:L㚬/㧦/㺴/ℓ;

.field public mResumed:Z

.field public mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    new-instance v0, Landroidx/fragment/app/FragmentActivity$㚬;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentActivity$㚬;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-static {v0}, L㚬/㧦/㺴/ℓ;->䂻(L㚬/㧦/㺴/ಫ;)L㚬/㧦/㺴/ℓ;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    new-instance v0, L㚬/ἥ/ㄏ;

    invoke-direct {v0, p0}, L㚬/ἥ/ㄏ;-><init>(L㚬/ἥ/ℓ;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:L㚬/ἥ/ㄏ;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;->init()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/activity/ComponentActivity;-><init>(I)V

    new-instance p1, Landroidx/fragment/app/FragmentActivity$㚬;

    invoke-direct {p1, p0}, Landroidx/fragment/app/FragmentActivity$㚬;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-static {p1}, L㚬/㧦/㺴/ℓ;->䂻(L㚬/㧦/㺴/ಫ;)L㚬/㧦/㺴/ℓ;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    new-instance p1, L㚬/ἥ/ㄏ;

    invoke-direct {p1, p0}, L㚬/ἥ/ㄏ;-><init>(L㚬/ἥ/ℓ;)V

    iput-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:L㚬/ἥ/ㄏ;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/FragmentActivity$உ;

    invoke-direct {v1, p0}, Landroidx/fragment/app/FragmentActivity$உ;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v2, "android:support:fragments"

    invoke-virtual {v0, v2, v1}, Landroidx/savedstate/SavedStateRegistry;->㺴(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$䂻;)V

    new-instance v0, Landroidx/fragment/app/FragmentActivity$䂻;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentActivity$䂻;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(L㚬/உ/㺴/䂻;)V

    return-void
.end method

.method private static markState(L㚬/㧦/㺴/ἥ;L㚬/ἥ/ḓ$㚬;)Z
    .locals 5

    invoke-virtual {p0}, L㚬/㧦/㺴/ἥ;->Ꭿ()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()L㚬/㧦/㺴/ἥ;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/fragment/app/FragmentActivity;->markState(L㚬/㧦/㺴/ἥ;L㚬/ἥ/ḓ$㚬;)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_2
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:L㚬/㧦/㺴/㫏;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, L㚬/㧦/㺴/㫏;->getLifecycle()L㚬/ἥ/ḓ;

    move-result-object v2

    invoke-virtual {v2}, L㚬/ἥ/ḓ;->䂻()L㚬/ἥ/ḓ$㚬;

    move-result-object v2

    sget-object v4, L㚬/ἥ/ḓ$㚬;->ḓ:L㚬/ἥ/ḓ$㚬;

    invoke-virtual {v2, v4}, L㚬/ἥ/ḓ$㚬;->உ(L㚬/ἥ/ḓ$㚬;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:L㚬/㧦/㺴/㫏;

    invoke-virtual {v0, p1}, L㚬/㧦/㺴/㫏;->䆀(L㚬/ἥ/ḓ$㚬;)V

    const/4 v0, 0x1

    :cond_3
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:L㚬/ἥ/ㄏ;

    invoke-virtual {v2}, L㚬/ἥ/ㄏ;->䂻()L㚬/ἥ/ḓ$㚬;

    move-result-object v2

    sget-object v4, L㚬/ἥ/ḓ$㚬;->ḓ:L㚬/ἥ/ḓ$㚬;

    invoke-virtual {v2, v4}, L㚬/ἥ/ḓ$㚬;->உ(L㚬/ἥ/ḓ$㚬;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:L㚬/ἥ/ㄏ;

    invoke-virtual {v0, p1}, L㚬/ἥ/ㄏ;->ᓭ(L㚬/ἥ/ḓ$㚬;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method


# virtual methods
.method public final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {v0, p1, p2, p3, p4}, L㚬/㧦/㺴/ℓ;->㢏(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, L㚬/ཇ/உ/உ;->䂻(L㚬/ἥ/ℓ;)L㚬/ཇ/உ/உ;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, L㚬/ཇ/உ/உ;->உ(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ℓ;->ḙ()L㚬/㧦/㺴/ἥ;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, L㚬/㧦/㺴/ἥ;->ᣑ(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getSupportFragmentManager()L㚬/㧦/㺴/ἥ;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ℓ;->ḙ()L㚬/㧦/㺴/ἥ;

    move-result-object v0

    return-object v0
.end method

.method public getSupportLoaderManager()L㚬/ཇ/உ/உ;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, L㚬/ཇ/உ/உ;->䂻(L㚬/ἥ/ℓ;)L㚬/ཇ/உ/உ;

    move-result-object v0

    return-object v0
.end method

.method public markFragmentsCreated()V
    .locals 2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()L㚬/㧦/㺴/ἥ;

    move-result-object v0

    sget-object v1, L㚬/ἥ/ḓ$㚬;->㺴:L㚬/ἥ/ḓ$㚬;

    invoke-static {v0, v1}, Landroidx/fragment/app/FragmentActivity;->markState(L㚬/㧦/㺴/ἥ;L㚬/ἥ/ḓ$㚬;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ℓ;->㖪()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ℓ;->㖪()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {v0, p1}, L㚬/㧦/㺴/ℓ;->㺴(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:L㚬/ἥ/ㄏ;

    sget-object v0, L㚬/ἥ/ḓ$䂻;->ON_CREATE:L㚬/ἥ/ḓ$䂻;

    invoke-virtual {p1, v0}, L㚬/ἥ/ㄏ;->ℓ(L㚬/ἥ/ḓ$䂻;)V

    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {p1}, L㚬/㧦/㺴/ℓ;->䆀()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, L㚬/㧦/㺴/ℓ;->ᆻ(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ℓ;->ℓ()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:L㚬/ἥ/ㄏ;

    sget-object v1, L㚬/ἥ/ḓ$䂻;->ON_DESTROY:L㚬/ἥ/ḓ$䂻;

    invoke-virtual {v0, v1}, L㚬/ἥ/ㄏ;->ℓ(L㚬/ἥ/ḓ$䂻;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ℓ;->ㄏ()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {p1, p2}, L㚬/㧦/㺴/ℓ;->ḓ(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_2
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {p1, p2}, L㚬/㧦/㺴/ℓ;->㧦(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {v0, p1}, L㚬/㧦/㺴/ℓ;->ಫ(Z)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {p1}, L㚬/㧦/㺴/ℓ;->㖪()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {v0, p2}, L㚬/㧦/㺴/ℓ;->㹖(Landroid/view/Menu;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ℓ;->ἥ()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:L㚬/ἥ/ㄏ;

    sget-object v1, L㚬/ἥ/ḓ$䂻;->ON_PAUSE:L㚬/ἥ/ḓ$䂻;

    invoke-virtual {v0, v1}, L㚬/ἥ/ㄏ;->ℓ(L㚬/ἥ/ḓ$䂻;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {v0, p1}, L㚬/㧦/㺴/ℓ;->ཇ(Z)V

    return-void
.end method

.method public onPostResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onResumeFragments()V

    return-void
.end method

.method public onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    iget-object p2, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {p2, p3}, L㚬/㧦/㺴/ℓ;->ᓭ(Landroid/view/Menu;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ℓ;->㖪()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ℓ;->㖪()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ℓ;->㭲()Z

    return-void
.end method

.method public onResumeFragments()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:L㚬/ἥ/ㄏ;

    sget-object v1, L㚬/ἥ/ḓ$䂻;->ON_RESUME:L㚬/ἥ/ḓ$䂻;

    invoke-virtual {v0, v1}, L㚬/ἥ/ㄏ;->ℓ(L㚬/ἥ/ḓ$䂻;)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ℓ;->ბ()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ℓ;->㚬()V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ℓ;->㖪()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ℓ;->㭲()Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:L㚬/ἥ/ㄏ;

    sget-object v1, L㚬/ἥ/ḓ$䂻;->ON_START:L㚬/ἥ/ḓ$䂻;

    invoke-virtual {v0, v1}, L㚬/ἥ/ㄏ;->ℓ(L㚬/ἥ/ḓ$䂻;)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ℓ;->㲝()V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ℓ;->㖪()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->markFragmentsCreated()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:L㚬/㧦/㺴/ℓ;

    invoke-virtual {v0}, L㚬/㧦/㺴/ℓ;->㞘()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:L㚬/ἥ/ㄏ;

    sget-object v1, L㚬/ἥ/ḓ$䂻;->ON_STOP:L㚬/ἥ/ḓ$䂻;

    invoke-virtual {v0, v1}, L㚬/ἥ/ㄏ;->ℓ(L㚬/ἥ/ḓ$䂻;)V

    return-void
.end method

.method public setEnterSharedElementCallback(L㚬/ℓ/㺴/ᆻ;)V
    .locals 0

    invoke-static {p0, p1}, L㚬/ℓ/㺴/உ;->ཇ(Landroid/app/Activity;L㚬/ℓ/㺴/ᆻ;)V

    return-void
.end method

.method public setExitSharedElementCallback(L㚬/ℓ/㺴/ᆻ;)V
    .locals 0

    invoke-static {p0, p1}, L㚬/ℓ/㺴/உ;->ᓭ(Landroid/app/Activity;L㚬/ℓ/㺴/ᆻ;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    invoke-static {p0, p2, v0, p4}, L㚬/ℓ/㺴/உ;->㲝(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p2    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    move v3, p3

    if-ne v3, v0, :cond_0

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v1 .. v8}, L㚬/ℓ/㺴/உ;->㞘(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p8}, Landroidx/fragment/app/Fragment;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public supportFinishAfterTransition()V
    .locals 0

    invoke-static {p0}, L㚬/ℓ/㺴/உ;->ಫ(Landroid/app/Activity;)V

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 0

    invoke-static {p0}, L㚬/ℓ/㺴/உ;->㧦(Landroid/app/Activity;)V

    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 0

    invoke-static {p0}, L㚬/ℓ/㺴/உ;->㭲(Landroid/app/Activity;)V

    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
