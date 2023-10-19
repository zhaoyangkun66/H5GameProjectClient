.class public Landroidx/lifecycle/FullLifecycleObserverAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ἥ/䆀;


# instance fields
.field public final உ:L㚬/ἥ/㚬;

.field public final 䂻:L㚬/ἥ/䆀;


# direct methods
.method public constructor <init>(L㚬/ἥ/㚬;L㚬/ἥ/䆀;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->உ:L㚬/ἥ/㚬;

    iput-object p2, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->䂻:L㚬/ἥ/䆀;

    return-void
.end method


# virtual methods
.method public 㺴(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;)V
    .locals 2

    sget-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$உ;->உ:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ON_ANY must not been send by anybody"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->உ:L㚬/ἥ/㚬;

    invoke-interface {v0, p1}, L㚬/ἥ/㚬;->䂻(L㚬/ἥ/ℓ;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->உ:L㚬/ἥ/㚬;

    invoke-interface {v0, p1}, L㚬/ἥ/㚬;->䆀(L㚬/ἥ/ℓ;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->உ:L㚬/ἥ/㚬;

    invoke-interface {v0, p1}, L㚬/ἥ/㚬;->ḓ(L㚬/ἥ/ℓ;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->உ:L㚬/ἥ/㚬;

    invoke-interface {v0, p1}, L㚬/ἥ/㚬;->உ(L㚬/ἥ/ℓ;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->உ:L㚬/ἥ/㚬;

    invoke-interface {v0, p1}, L㚬/ἥ/㚬;->ᆻ(L㚬/ἥ/ℓ;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->உ:L㚬/ἥ/㚬;

    invoke-interface {v0, p1}, L㚬/ἥ/㚬;->㚬(L㚬/ἥ/ℓ;)V

    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->䂻:L㚬/ἥ/䆀;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, L㚬/ἥ/䆀;->㺴(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
