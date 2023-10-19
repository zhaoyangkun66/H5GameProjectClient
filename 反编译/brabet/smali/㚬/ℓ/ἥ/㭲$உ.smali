.class public L㚬/ℓ/ἥ/㭲$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/ℓ/ἥ/㭲;->ᗼ(Landroid/view/View;L㚬/ℓ/ἥ/ბ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㚬/ℓ/ἥ/ბ;


# direct methods
.method public constructor <init>(L㚬/ℓ/ἥ/ბ;)V
    .locals 0

    iput-object p1, p0, L㚬/ℓ/ἥ/㭲$உ;->உ:L㚬/ℓ/ἥ/ბ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    invoke-static {p2}, L㚬/ℓ/ἥ/ಋ;->㹖(Landroid/view/WindowInsets;)L㚬/ℓ/ἥ/ಋ;

    move-result-object p2

    iget-object v0, p0, L㚬/ℓ/ἥ/㭲$உ;->உ:L㚬/ℓ/ἥ/ბ;

    invoke-interface {v0, p1, p2}, L㚬/ℓ/ἥ/ბ;->உ(Landroid/view/View;L㚬/ℓ/ἥ/ಋ;)L㚬/ℓ/ἥ/ಋ;

    move-result-object p1

    invoke-virtual {p1}, L㚬/ℓ/ἥ/ಋ;->㧦()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
