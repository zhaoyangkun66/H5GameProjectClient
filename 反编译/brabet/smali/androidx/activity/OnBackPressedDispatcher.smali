.class public final Landroidx/activity/OnBackPressedDispatcher;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;,
        Landroidx/activity/OnBackPressedDispatcher$உ;
    }
.end annotation


# instance fields
.field public final உ:Ljava/lang/Runnable;

.field public final 䂻:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "L\u36ac/\u0b89/\u40bb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->䂻:Ljava/util/ArrayDeque;

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->உ:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public உ(L㚬/ἥ/ℓ;L㚬/உ/䂻;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    invoke-interface {p1}, L㚬/ἥ/ℓ;->getLifecycle()L㚬/ἥ/ḓ;

    move-result-object p1

    invoke-virtual {p1}, L㚬/ἥ/ḓ;->䂻()L㚬/ἥ/ḓ$㚬;

    move-result-object v0

    sget-object v1, L㚬/ἥ/ḓ$㚬;->䂻:L㚬/ἥ/ḓ$㚬;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/OnBackPressedDispatcher;L㚬/ἥ/ḓ;L㚬/உ/䂻;)V

    invoke-virtual {p2, v0}, L㚬/உ/䂻;->உ(L㚬/உ/உ;)V

    return-void
.end method

.method public 㚬()V
    .locals 3

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->䂻:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/உ/䂻;

    invoke-virtual {v1}, L㚬/உ/䂻;->㚬()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, L㚬/உ/䂻;->䂻()V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->உ:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public 䂻(L㚬/உ/䂻;)L㚬/உ/உ;
    .locals 1

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->䂻:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$உ;

    invoke-direct {v0, p0, p1}, Landroidx/activity/OnBackPressedDispatcher$உ;-><init>(Landroidx/activity/OnBackPressedDispatcher;L㚬/உ/䂻;)V

    invoke-virtual {p1, v0}, L㚬/உ/䂻;->உ(L㚬/உ/உ;)V

    return-object v0
.end method
