.class public Landroidx/savedstate/SavedStateRegistry$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ἥ/䆀;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/savedstate/SavedStateRegistry;->䂻(L㚬/ἥ/ḓ;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:Landroidx/savedstate/SavedStateRegistry;


# direct methods
.method public constructor <init>(Landroidx/savedstate/SavedStateRegistry;)V
    .locals 0

    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->உ:Landroidx/savedstate/SavedStateRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public 㺴(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;)V
    .locals 0

    sget-object p1, L㚬/ἥ/ḓ$䂻;->ON_START:L㚬/ἥ/ḓ$䂻;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->உ:Landroidx/savedstate/SavedStateRegistry;

    const/4 p2, 0x1

    :goto_0
    iput-boolean p2, p1, Landroidx/savedstate/SavedStateRegistry;->ḓ:Z

    goto :goto_1

    :cond_0
    sget-object p1, L㚬/ἥ/ḓ$䂻;->ON_STOP:L㚬/ἥ/ḓ$䂻;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->உ:Landroidx/savedstate/SavedStateRegistry;

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
