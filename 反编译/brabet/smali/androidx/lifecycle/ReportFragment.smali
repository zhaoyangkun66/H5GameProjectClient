.class public Landroidx/lifecycle/ReportFragment;
.super Landroid/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ReportFragment$䂻;,
        Landroidx/lifecycle/ReportFragment$உ;
    }
.end annotation


# instance fields
.field public 䂻:Landroidx/lifecycle/ReportFragment$உ;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static உ(Landroid/app/Activity;L㚬/ἥ/ḓ$䂻;)V
    .locals 1

    instance-of v0, p0, L㚬/ἥ/ಫ;

    if-eqz v0, :cond_0

    check-cast p0, L㚬/ἥ/ಫ;

    invoke-interface {p0}, L㚬/ἥ/ಫ;->getLifecycle()L㚬/ἥ/ㄏ;

    move-result-object p0

    invoke-virtual {p0, p1}, L㚬/ἥ/ㄏ;->ℓ(L㚬/ἥ/ḓ$䂻;)V

    return-void

    :cond_0
    instance-of v0, p0, L㚬/ἥ/ℓ;

    if-eqz v0, :cond_1

    check-cast p0, L㚬/ἥ/ℓ;

    invoke-interface {p0}, L㚬/ἥ/ℓ;->getLifecycle()L㚬/ἥ/ḓ;

    move-result-object p0

    instance-of v0, p0, L㚬/ἥ/ㄏ;

    if-eqz v0, :cond_1

    check-cast p0, L㚬/ἥ/ㄏ;

    invoke-virtual {p0, p1}, L㚬/ἥ/ㄏ;->ℓ(L㚬/ἥ/ḓ$䂻;)V

    :cond_1
    return-void
.end method

.method public static 䆀(Landroid/app/Activity;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/lifecycle/ReportFragment$䂻;->registerIn(Landroid/app/Activity;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/ReportFragment;

    invoke-direct {v2}, Landroidx/lifecycle/ReportFragment;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/lifecycle/ReportFragment;->䂻:Landroidx/lifecycle/ReportFragment$உ;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/ReportFragment;->㚬(Landroidx/lifecycle/ReportFragment$உ;)V

    sget-object p1, L㚬/ἥ/ḓ$䂻;->ON_CREATE:L㚬/ἥ/ḓ$䂻;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/ReportFragment;->䂻(L㚬/ἥ/ḓ$䂻;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    sget-object v0, L㚬/ἥ/ḓ$䂻;->ON_DESTROY:L㚬/ἥ/ḓ$䂻;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->䂻(L㚬/ἥ/ḓ$䂻;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/lifecycle/ReportFragment;->䂻:Landroidx/lifecycle/ReportFragment$உ;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, L㚬/ἥ/ḓ$䂻;->ON_PAUSE:L㚬/ἥ/ḓ$䂻;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->䂻(L㚬/ἥ/ḓ$䂻;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Landroidx/lifecycle/ReportFragment;->䂻:Landroidx/lifecycle/ReportFragment$உ;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->㺴(Landroidx/lifecycle/ReportFragment$உ;)V

    sget-object v0, L㚬/ἥ/ḓ$䂻;->ON_RESUME:L㚬/ἥ/ḓ$䂻;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->䂻(L㚬/ἥ/ḓ$䂻;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Landroidx/lifecycle/ReportFragment;->䂻:Landroidx/lifecycle/ReportFragment$உ;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->ḓ(Landroidx/lifecycle/ReportFragment$உ;)V

    sget-object v0, L㚬/ἥ/ḓ$䂻;->ON_START:L㚬/ἥ/ḓ$䂻;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->䂻(L㚬/ἥ/ḓ$䂻;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    sget-object v0, L㚬/ἥ/ḓ$䂻;->ON_STOP:L㚬/ἥ/ḓ$䂻;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->䂻(L㚬/ἥ/ḓ$䂻;)V

    return-void
.end method

.method public final ḓ(Landroidx/lifecycle/ReportFragment$உ;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$உ;->䂻()V

    :cond_0
    return-void
.end method

.method public final 㚬(Landroidx/lifecycle/ReportFragment$உ;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$உ;->உ()V

    :cond_0
    return-void
.end method

.method public final 㺴(Landroidx/lifecycle/ReportFragment$உ;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$உ;->onResume()V

    :cond_0
    return-void
.end method

.method public final 䂻(L㚬/ἥ/ḓ$䂻;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/lifecycle/ReportFragment;->உ(Landroid/app/Activity;L㚬/ἥ/ḓ$䂻;)V

    :cond_0
    return-void
.end method
