.class public final L㚬/䂻/ბ/䅚$உ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ბ/䅚;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "\u0b89"
.end annotation


# instance fields
.field public final உ:Landroid/widget/TextView;

.field public final ḓ:Landroid/widget/ImageView;

.field public final 㚬:Landroid/widget/ImageView;

.field public final 㺴:Landroid/widget/ImageView;

.field public final 䂻:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, L㚬/䂻/ბ/䅚$உ;->உ:Landroid/widget/TextView;

    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, L㚬/䂻/ბ/䅚$உ;->䂻:Landroid/widget/TextView;

    const v0, 0x1020007

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, L㚬/䂻/ბ/䅚$உ;->㚬:Landroid/widget/ImageView;

    const v0, 0x1020008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, L㚬/䂻/ბ/䅚$உ;->㺴:Landroid/widget/ImageView;

    sget v0, L㚬/䂻/䆀;->㲝:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, L㚬/䂻/ბ/䅚$உ;->ḓ:Landroid/widget/ImageView;

    return-void
.end method
