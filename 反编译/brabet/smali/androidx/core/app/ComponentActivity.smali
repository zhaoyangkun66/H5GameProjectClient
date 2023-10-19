.class public Landroidx/core/app/ComponentActivity;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements L㚬/ἥ/ℓ;
.implements L㚬/ℓ/ἥ/ḓ$உ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ComponentActivity$உ;
    }
.end annotation


# instance fields
.field private mExtraDataMap:L㚬/䆀/ᆻ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u4180/\u11bb<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/core/app/ComponentActivity$\u0b89;",
            ">;",
            "Landroidx/core/app/ComponentActivity$\u0b89;",
            ">;"
        }
    .end annotation
.end field

.field private mLifecycleRegistry:L㚬/ἥ/ㄏ;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, L㚬/䆀/ᆻ;

    invoke-direct {v0}, L㚬/䆀/ᆻ;-><init>()V

    iput-object v0, p0, Landroidx/core/app/ComponentActivity;->mExtraDataMap:L㚬/䆀/ᆻ;

    new-instance v0, L㚬/ἥ/ㄏ;

    invoke-direct {v0, p0}, L㚬/ἥ/ㄏ;-><init>(L㚬/ἥ/ℓ;)V

    iput-object v0, p0, Landroidx/core/app/ComponentActivity;->mLifecycleRegistry:L㚬/ἥ/ㄏ;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, L㚬/ℓ/ἥ/ḓ;->㺴(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-static {p0, v0, p0, p1}, L㚬/ℓ/ἥ/ḓ;->ḓ(L㚬/ℓ/ἥ/ḓ$உ;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, L㚬/ℓ/ἥ/ḓ;->㺴(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getExtraData(Ljava/lang/Class;)Landroidx/core/app/ComponentActivity$உ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/core/app/ComponentActivity$\u0b89;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/app/ComponentActivity;->mExtraDataMap:L㚬/䆀/ᆻ;

    invoke-virtual {v0, p1}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/app/ComponentActivity$உ;

    return-object p1
.end method

.method public getLifecycle()L㚬/ἥ/ḓ;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/ComponentActivity;->mLifecycleRegistry:L㚬/ἥ/ㄏ;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/lifecycle/ReportFragment;->䆀(Landroid/app/Activity;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/core/app/ComponentActivity;->mLifecycleRegistry:L㚬/ἥ/ㄏ;

    sget-object v1, L㚬/ἥ/ḓ$㚬;->㺴:L㚬/ἥ/ḓ$㚬;

    invoke-virtual {v0, v1}, L㚬/ἥ/ㄏ;->ಫ(L㚬/ἥ/ḓ$㚬;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public putExtraData(Landroidx/core/app/ComponentActivity$உ;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/app/ComponentActivity;->mExtraDataMap:L㚬/䆀/ᆻ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
