.class public L㚬/䂻/ბ/ỷ$㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ბ/ỷ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u36ac"
.end annotation


# instance fields
.field public final synthetic 䂻:L㚬/䂻/ბ/ỷ;


# direct methods
.method public constructor <init>(L㚬/䂻/ბ/ỷ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/ỷ$㚬;->䂻:L㚬/䂻/ბ/ỷ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    move-object v0, p1

    check-cast v0, L㚬/䂻/ბ/ỷ$㺴;

    invoke-virtual {v0}, L㚬/䂻/ბ/ỷ$㺴;->䂻()L㚬/䂻/㧦/உ$㚬;

    move-result-object v0

    invoke-virtual {v0}, L㚬/䂻/㧦/உ$㚬;->ḓ()V

    iget-object v0, p0, L㚬/䂻/ბ/ỷ$㚬;->䂻:L㚬/䂻/ბ/ỷ;

    iget-object v0, v0, L㚬/䂻/ბ/ỷ;->㺴:L㚬/䂻/ბ/ᱹ;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, L㚬/䂻/ბ/ỷ$㚬;->䂻:L㚬/䂻/ბ/ỷ;

    iget-object v3, v3, L㚬/䂻/ბ/ỷ;->㺴:L㚬/䂻/ბ/ᱹ;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
