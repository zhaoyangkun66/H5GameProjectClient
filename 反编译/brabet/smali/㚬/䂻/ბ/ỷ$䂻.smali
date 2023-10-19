.class public L㚬/䂻/ბ/ỷ$䂻;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ბ/ỷ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u40bb"
.end annotation


# instance fields
.field public final synthetic 䂻:L㚬/䂻/ბ/ỷ;


# direct methods
.method public constructor <init>(L㚬/䂻/ბ/ỷ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/ỷ$䂻;->䂻:L㚬/䂻/ბ/ỷ;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ỷ$䂻;->䂻:L㚬/䂻/ბ/ỷ;

    iget-object v0, v0, L㚬/䂻/ბ/ỷ;->㺴:L㚬/䂻/ბ/ᱹ;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ỷ$䂻;->䂻:L㚬/䂻/ბ/ỷ;

    iget-object v0, v0, L㚬/䂻/ბ/ỷ;->㺴:L㚬/䂻/ბ/ᱹ;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, L㚬/䂻/ბ/ỷ$㺴;

    invoke-virtual {p1}, L㚬/䂻/ბ/ỷ$㺴;->䂻()L㚬/䂻/㧦/உ$㚬;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    iget-object p2, p0, L㚬/䂻/ბ/ỷ$䂻;->䂻:L㚬/䂻/ბ/ỷ;

    invoke-virtual {p0, p1}, L㚬/䂻/ბ/ỷ$䂻;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, L㚬/䂻/㧦/உ$㚬;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, L㚬/䂻/ბ/ỷ;->㚬(L㚬/䂻/㧦/உ$㚬;Z)L㚬/䂻/ბ/ỷ$㺴;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p3, p2

    check-cast p3, L㚬/䂻/ბ/ỷ$㺴;

    invoke-virtual {p0, p1}, L㚬/䂻/ბ/ỷ$䂻;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, L㚬/䂻/㧦/உ$㚬;

    invoke-virtual {p3, p1}, L㚬/䂻/ბ/ỷ$㺴;->உ(L㚬/䂻/㧦/உ$㚬;)V

    :goto_0
    return-object p2
.end method
