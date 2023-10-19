.class public L㚬/䂻/ბ/ᇿ$䂻;
.super L㚬/ℓ/ἥ/ㄬ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/䂻/ბ/ᇿ;->ბ(IJ)L㚬/ℓ/ἥ/ม;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public உ:Z

.field public final synthetic 㚬:L㚬/䂻/ბ/ᇿ;

.field public final synthetic 䂻:I


# direct methods
.method public constructor <init>(L㚬/䂻/ბ/ᇿ;I)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/ᇿ$䂻;->㚬:L㚬/䂻/ბ/ᇿ;

    iput p2, p0, L㚬/䂻/ბ/ᇿ$䂻;->䂻:I

    invoke-direct {p0}, L㚬/ℓ/ἥ/ㄬ;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, L㚬/䂻/ბ/ᇿ$䂻;->உ:Z

    return-void
.end method


# virtual methods
.method public உ(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, L㚬/䂻/ბ/ᇿ$䂻;->உ:Z

    if-nez p1, :cond_0

    iget-object p1, p0, L㚬/䂻/ბ/ᇿ$䂻;->㚬:L㚬/䂻/ბ/ᇿ;

    iget-object p1, p1, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    iget v0, p0, L㚬/䂻/ბ/ᇿ$䂻;->䂻:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public 㚬(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/䂻/ბ/ᇿ$䂻;->உ:Z

    return-void
.end method

.method public 䂻(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, L㚬/䂻/ბ/ᇿ$䂻;->㚬:L㚬/䂻/ბ/ᇿ;

    iget-object p1, p1, L㚬/䂻/ბ/ᇿ;->உ:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
