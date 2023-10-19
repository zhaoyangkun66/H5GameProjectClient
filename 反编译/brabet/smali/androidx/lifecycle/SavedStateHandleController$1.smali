.class public Landroidx/lifecycle/SavedStateHandleController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ἥ/䆀;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/SavedStateHandleController;->ἥ(Landroidx/savedstate/SavedStateRegistry;L㚬/ἥ/ḓ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㚬/ἥ/ḓ;

.field public final synthetic 䂻:Landroidx/savedstate/SavedStateRegistry;


# direct methods
.method public constructor <init>(L㚬/ἥ/ḓ;Landroidx/savedstate/SavedStateRegistry;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->உ:L㚬/ἥ/ḓ;

    iput-object p2, p0, Landroidx/lifecycle/SavedStateHandleController$1;->䂻:Landroidx/savedstate/SavedStateRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public 㺴(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;)V
    .locals 0

    sget-object p1, L㚬/ἥ/ḓ$䂻;->ON_START:L㚬/ἥ/ḓ$䂻;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->உ:L㚬/ἥ/ḓ;

    invoke-virtual {p1, p0}, L㚬/ἥ/ḓ;->㚬(L㚬/ἥ/ᆻ;)V

    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->䂻:Landroidx/savedstate/SavedStateRegistry;

    const-class p2, Landroidx/lifecycle/SavedStateHandleController$உ;

    invoke-virtual {p1, p2}, Landroidx/savedstate/SavedStateRegistry;->ḓ(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
