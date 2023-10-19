.class public L㺴/㚬/உ/䂻/㢏/ཇ;
.super Landroidx/recyclerview/widget/RecyclerView$ᆻ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㺴/㚬/உ/䂻/㢏/ཇ$䂻;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$\u11bb<",
        "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u0f47$\u40bb;",
        ">;"
    }
.end annotation


# instance fields
.field public final ḓ:L㺴/㚬/உ/䂻/㢏/ℓ$㹖;

.field public final 㚬:L㺴/㚬/உ/䂻/㢏/உ;

.field public final 㺴:L㺴/㚬/உ/䂻/㢏/㺴;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u3eb4<",
            "*>;"
        }
    .end annotation
.end field

.field public final 䆀:I


# direct methods
.method public constructor <init>(Landroid/content/Context;L㺴/㚬/உ/䂻/㢏/㺴;L㺴/㚬/உ/䂻/㢏/உ;L㺴/㚬/உ/䂻/㢏/ℓ$㹖;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u3eb4<",
            "*>;",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u0b89;",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u2113$\u3e56;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;-><init>()V

    invoke-virtual {p3}, L㺴/㚬/உ/䂻/㢏/உ;->㞘()L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v0

    invoke-virtual {p3}, L㺴/㚬/உ/䂻/㢏/உ;->ᓭ()L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v1

    invoke-virtual {p3}, L㺴/㚬/உ/䂻/㢏/உ;->㲝()L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v2

    invoke-virtual {v0, v2}, L㺴/㚬/உ/䂻/㢏/㹖;->ಫ(L㺴/㚬/உ/䂻/㢏/㹖;)I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {v2, v1}, L㺴/㚬/உ/䂻/㢏/㹖;->ಫ(L㺴/㚬/உ/䂻/㢏/㹖;)I

    move-result v0

    if-gtz v0, :cond_1

    sget v0, L㺴/㚬/உ/䂻/㢏/ἥ;->䆀:I

    invoke-static {p1}, L㺴/㚬/உ/䂻/㢏/ℓ;->ბ(Landroid/content/Context;)I

    move-result v1

    mul-int v0, v0, v1

    invoke-static {p1}, L㺴/㚬/உ/䂻/㢏/ㄏ;->ბ(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, L㺴/㚬/உ/䂻/㢏/ℓ;->ბ(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, L㺴/㚬/உ/䂻/㢏/ཇ;->䆀:I

    iput-object p3, p0, L㺴/㚬/உ/䂻/㢏/ཇ;->㚬:L㺴/㚬/உ/䂻/㢏/உ;

    iput-object p2, p0, L㺴/㚬/உ/䂻/㢏/ཇ;->㺴:L㺴/㚬/உ/䂻/㢏/㺴;

    iput-object p4, p0, L㺴/㚬/உ/䂻/㢏/ཇ;->ḓ:L㺴/㚬/உ/䂻/㢏/ℓ$㹖;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;->㭲(Z)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "currentPage cannot be after lastPage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "firstPage cannot be after currentPage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic 㖪(L㺴/㚬/உ/䂻/㢏/ཇ;)L㺴/㚬/உ/䂻/㢏/ℓ$㹖;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/㢏/ཇ;->ḓ:L㺴/㚬/உ/䂻/㢏/ℓ$㹖;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic ಫ(Landroidx/recyclerview/widget/RecyclerView$㰫;I)V
    .locals 0

    check-cast p1, L㺴/㚬/உ/䂻/㢏/ཇ$䂻;

    invoke-virtual {p0, p1, p2}, L㺴/㚬/உ/䂻/㢏/ཇ;->ㄬ(L㺴/㚬/உ/䂻/㢏/ཇ$䂻;I)V

    return-void
.end method

.method public ม(I)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㢏/ཇ;->㢏(I)L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object p1

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/㢏/㹖;->ᓭ()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ㄬ(L㺴/㚬/உ/䂻/㢏/ཇ$䂻;I)V
    .locals 3

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ཇ;->㚬:L㺴/㚬/உ/䂻/㢏/உ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㢏/உ;->㞘()L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v0

    invoke-virtual {v0, p2}, L㺴/㚬/உ/䂻/㢏/㹖;->㲝(I)L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object p2

    iget-object v0, p1, L㺴/㚬/உ/䂻/㢏/ཇ$䂻;->ḙ:Landroid/widget/TextView;

    invoke-virtual {p2}, L㺴/㚬/உ/䂻/㢏/㹖;->ᓭ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, L㺴/㚬/உ/䂻/㢏/ཇ$䂻;->㖪:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    sget v0, L㺴/㚬/உ/䂻/䆀;->ḓ:I

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->䂻()L㺴/㚬/உ/䂻/㢏/ἥ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->䂻()L㺴/㚬/உ/䂻/㢏/ἥ;

    move-result-object v0

    iget-object v0, v0, L㺴/㚬/உ/䂻/㢏/ἥ;->䂻:L㺴/㚬/உ/䂻/㢏/㹖;

    invoke-virtual {p2, v0}, L㺴/㚬/உ/䂻/㢏/㹖;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->䂻()L㺴/㚬/உ/䂻/㢏/ἥ;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    new-instance v0, L㺴/㚬/உ/䂻/㢏/ἥ;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㢏/ཇ;->㺴:L㺴/㚬/உ/䂻/㢏/㺴;

    iget-object v2, p0, L㺴/㚬/உ/䂻/㢏/ཇ;->㚬:L㺴/㚬/உ/䂻/㢏/உ;

    invoke-direct {v0, p2, v1, v2}, L㺴/㚬/உ/䂻/㢏/ἥ;-><init>(L㺴/㚬/உ/䂻/㢏/㹖;L㺴/㚬/உ/䂻/㢏/㺴;L㺴/㚬/உ/䂻/㢏/உ;)V

    iget p2, p2, L㺴/㚬/உ/䂻/㢏/㹖;->䆀:I

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    new-instance p2, L㺴/㚬/உ/䂻/㢏/ཇ$உ;

    invoke-direct {p2, p0, p1}, L㺴/㚬/உ/䂻/㢏/ཇ$உ;-><init>(L㺴/㚬/உ/䂻/㢏/ཇ;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public 㚬()I
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ཇ;->㚬:L㺴/㚬/உ/䂻/㢏/உ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㢏/உ;->ბ()I

    move-result v0

    return v0
.end method

.method public 㢏(I)L㺴/㚬/உ/䂻/㢏/㹖;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ཇ;->㚬:L㺴/㚬/உ/䂻/㢏/உ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㢏/உ;->㞘()L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/㢏/㹖;->㲝(I)L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object p1

    return-object p1
.end method

.method public 㫏(Landroid/view/ViewGroup;I)L㺴/㚬/உ/䂻/㢏/ཇ$䂻;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, L㺴/㚬/உ/䂻/ℓ;->ᆻ:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, L㺴/㚬/உ/䂻/㢏/ㄏ;->ბ(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$ბ;

    const/4 v0, -0x1

    iget v1, p0, L㺴/㚬/உ/䂻/㢏/ཇ;->䆀:I

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ბ;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, L㺴/㚬/உ/䂻/㢏/ཇ$䂻;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, L㺴/㚬/உ/䂻/㢏/ཇ$䂻;-><init>(Landroid/widget/LinearLayout;Z)V

    return-object p1

    :cond_0
    new-instance p1, L㺴/㚬/உ/䂻/㢏/ཇ$䂻;

    invoke-direct {p1, p2, v1}, L㺴/㚬/உ/䂻/㢏/ཇ$䂻;-><init>(Landroid/widget/LinearLayout;Z)V

    return-object p1
.end method

.method public 㲧(L㺴/㚬/உ/䂻/㢏/㹖;)I
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ཇ;->㚬:L㺴/㚬/உ/䂻/㢏/உ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㢏/உ;->㞘()L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/㢏/㹖;->㞘(L㺴/㚬/உ/䂻/㢏/㹖;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic 㹖(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$㰫;
    .locals 0

    invoke-virtual {p0, p1, p2}, L㺴/㚬/உ/䂻/㢏/ཇ;->㫏(Landroid/view/ViewGroup;I)L㺴/㚬/உ/䂻/㢏/ཇ$䂻;

    move-result-object p1

    return-object p1
.end method

.method public 㺴(I)J
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ཇ;->㚬:L㺴/㚬/உ/䂻/㢏/உ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㢏/உ;->㞘()L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v0

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/㢏/㹖;->㲝(I)L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object p1

    invoke-virtual {p1}, L㺴/㚬/உ/䂻/㢏/㹖;->ბ()J

    move-result-wide v0

    return-wide v0
.end method
