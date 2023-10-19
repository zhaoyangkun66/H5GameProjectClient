.class public Landroidx/lifecycle/ReportFragment$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ReportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u40bb"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerIn(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Landroidx/lifecycle/ReportFragment$䂻;

    invoke-direct {v0}, Landroidx/lifecycle/ReportFragment$䂻;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    sget-object p2, L㚬/ἥ/ḓ$䂻;->ON_CREATE:L㚬/ἥ/ḓ$䂻;

    invoke-static {p1, p2}, Landroidx/lifecycle/ReportFragment;->உ(Landroid/app/Activity;L㚬/ἥ/ḓ$䂻;)V

    return-void
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, L㚬/ἥ/ḓ$䂻;->ON_RESUME:L㚬/ἥ/ḓ$䂻;

    invoke-static {p1, v0}, Landroidx/lifecycle/ReportFragment;->உ(Landroid/app/Activity;L㚬/ἥ/ḓ$䂻;)V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, L㚬/ἥ/ḓ$䂻;->ON_START:L㚬/ἥ/ḓ$䂻;

    invoke-static {p1, v0}, Landroidx/lifecycle/ReportFragment;->உ(Landroid/app/Activity;L㚬/ἥ/ḓ$䂻;)V

    return-void
.end method

.method public onActivityPreDestroyed(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, L㚬/ἥ/ḓ$䂻;->ON_DESTROY:L㚬/ἥ/ḓ$䂻;

    invoke-static {p1, v0}, Landroidx/lifecycle/ReportFragment;->உ(Landroid/app/Activity;L㚬/ἥ/ḓ$䂻;)V

    return-void
.end method

.method public onActivityPrePaused(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, L㚬/ἥ/ḓ$䂻;->ON_PAUSE:L㚬/ἥ/ḓ$䂻;

    invoke-static {p1, v0}, Landroidx/lifecycle/ReportFragment;->உ(Landroid/app/Activity;L㚬/ἥ/ḓ$䂻;)V

    return-void
.end method

.method public onActivityPreStopped(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, L㚬/ἥ/ḓ$䂻;->ON_STOP:L㚬/ἥ/ḓ$䂻;

    invoke-static {p1, v0}, Landroidx/lifecycle/ReportFragment;->உ(Landroid/app/Activity;L㚬/ἥ/ḓ$䂻;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
