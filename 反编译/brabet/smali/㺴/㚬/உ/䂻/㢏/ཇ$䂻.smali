.class public L㺴/㚬/உ/䂻/㢏/ཇ$䂻;
.super Landroidx/recyclerview/widget/RecyclerView$㰫;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/உ/䂻/㢏/ཇ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u40bb"
.end annotation


# instance fields
.field public final ḙ:Landroid/widget/TextView;

.field public final 㖪:Lcom/google/android/material/datepicker/MaterialCalendarGridView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Z)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$㰫;-><init>(Landroid/view/View;)V

    sget v0, L㺴/㚬/உ/䂻/䆀;->ㄏ:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, L㺴/㚬/உ/䂻/㢏/ཇ$䂻;->ḙ:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, L㚬/ℓ/ἥ/㭲;->ග(Landroid/view/View;Z)V

    sget v1, L㺴/㚬/உ/䂻/䆀;->ḓ:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    iput-object p1, p0, L㺴/㚬/உ/䂻/㢏/ཇ$䂻;->㖪:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    if-nez p2, :cond_0

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
