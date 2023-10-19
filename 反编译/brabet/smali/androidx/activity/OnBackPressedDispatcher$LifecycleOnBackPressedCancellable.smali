.class public Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ἥ/䆀;
.implements L㚬/உ/உ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/OnBackPressedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LifecycleOnBackPressedCancellable"
.end annotation


# instance fields
.field public final உ:L㚬/ἥ/ḓ;

.field public 㚬:L㚬/உ/உ;

.field public final synthetic 㺴:Landroidx/activity/OnBackPressedDispatcher;

.field public final 䂻:L㚬/உ/䂻;


# direct methods
.method public constructor <init>(Landroidx/activity/OnBackPressedDispatcher;L㚬/ἥ/ḓ;L㚬/உ/䂻;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->㺴:Landroidx/activity/OnBackPressedDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->உ:L㚬/ἥ/ḓ;

    iput-object p3, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->䂻:L㚬/உ/䂻;

    invoke-virtual {p2, p0}, L㚬/ἥ/ḓ;->உ(L㚬/ἥ/ᆻ;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->உ:L㚬/ἥ/ḓ;

    invoke-virtual {v0, p0}, L㚬/ἥ/ḓ;->㚬(L㚬/ἥ/ᆻ;)V

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->䂻:L㚬/உ/䂻;

    invoke-virtual {v0, p0}, L㚬/உ/䂻;->ḓ(L㚬/உ/உ;)V

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->㚬:L㚬/உ/உ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, L㚬/உ/உ;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->㚬:L㚬/உ/உ;

    :cond_0
    return-void
.end method

.method public 㺴(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;)V
    .locals 0

    sget-object p1, L㚬/ἥ/ḓ$䂻;->ON_START:L㚬/ἥ/ḓ$䂻;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->㺴:Landroidx/activity/OnBackPressedDispatcher;

    iget-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->䂻:L㚬/உ/䂻;

    invoke-virtual {p1, p2}, Landroidx/activity/OnBackPressedDispatcher;->䂻(L㚬/உ/䂻;)L㚬/உ/உ;

    move-result-object p1

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->㚬:L㚬/உ/உ;

    goto :goto_0

    :cond_0
    sget-object p1, L㚬/ἥ/ḓ$䂻;->ON_STOP:L㚬/ἥ/ḓ$䂻;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->㚬:L㚬/உ/உ;

    if-eqz p1, :cond_2

    invoke-interface {p1}, L㚬/உ/உ;->cancel()V

    goto :goto_0

    :cond_1
    sget-object p1, L㚬/ἥ/ḓ$䂻;->ON_DESTROY:L㚬/ἥ/ḓ$䂻;

    if-ne p2, p1, :cond_2

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method
