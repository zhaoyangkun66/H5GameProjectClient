.class public L㺴/㚬/உ/䂻/㢏/㭲;
.super Landroidx/recyclerview/widget/RecyclerView$ᆻ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㺴/㚬/உ/䂻/㢏/㭲$䂻;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$\u11bb<",
        "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u3b72$\u40bb;",
        ">;"
    }
.end annotation


# instance fields
.field public final 㚬:L㺴/㚬/உ/䂻/㢏/ℓ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u2113<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/㢏/ℓ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u2113<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ᆻ;-><init>()V

    iput-object p1, p0, L㺴/㚬/உ/䂻/㢏/㭲;->㚬:L㺴/㚬/உ/䂻/㢏/ℓ;

    return-void
.end method

.method public static synthetic 㖪(L㺴/㚬/உ/䂻/㢏/㭲;)L㺴/㚬/உ/䂻/㢏/ℓ;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/㢏/㭲;->㚬:L㺴/㚬/உ/䂻/㢏/ℓ;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic ಫ(Landroidx/recyclerview/widget/RecyclerView$㰫;I)V
    .locals 0

    check-cast p1, L㺴/㚬/உ/䂻/㢏/㭲$䂻;

    invoke-virtual {p0, p1, p2}, L㺴/㚬/உ/䂻/㢏/㭲;->ㄬ(L㺴/㚬/உ/䂻/㢏/㭲$䂻;I)V

    return-void
.end method

.method public ม(I)I
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/㭲;->㚬:L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㢏/ℓ;->㹖()L㺴/㚬/உ/䂻/㢏/உ;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㢏/உ;->㞘()L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v0

    iget v0, v0, L㺴/㚬/உ/䂻/㢏/㹖;->ḓ:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public ㄬ(L㺴/㚬/உ/䂻/㢏/㭲$䂻;I)V
    .locals 7

    invoke-virtual {p0, p2}, L㺴/㚬/உ/䂻/㢏/㭲;->㲧(I)I

    move-result p2

    iget-object v0, p1, L㺴/㚬/உ/䂻/㢏/㭲$䂻;->ḙ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, L㺴/㚬/உ/䂻/ㄏ;->ಫ:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, L㺴/㚬/உ/䂻/㢏/㭲$䂻;->ḙ:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "%d"

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, L㺴/㚬/உ/䂻/㢏/㭲$䂻;->ḙ:Landroid/widget/TextView;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/㭲;->㚬:L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㢏/ℓ;->ἥ()L㺴/㚬/உ/䂻/㢏/㚬;

    move-result-object v0

    invoke-static {}, L㺴/㚬/உ/䂻/㢏/㞘;->ㄏ()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    iget-object v2, v0, L㺴/㚬/உ/䂻/㢏/㚬;->䆀:L㺴/㚬/உ/䂻/㢏/䂻;

    goto :goto_0

    :cond_0
    iget-object v2, v0, L㺴/㚬/உ/䂻/㢏/㚬;->㺴:L㺴/㚬/உ/䂻/㢏/䂻;

    :goto_0
    iget-object v4, p0, L㺴/㚬/உ/䂻/㢏/㭲;->㚬:L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-virtual {v4}, L㺴/㚬/உ/䂻/㢏/ℓ;->ᓭ()L㺴/㚬/உ/䂻/㢏/㺴;

    move-result-object v4

    invoke-interface {v4}, L㺴/㚬/உ/䂻/㢏/㺴;->ㄏ()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, p2, :cond_1

    iget-object v2, v0, L㺴/㚬/உ/䂻/㢏/㚬;->ḓ:L㺴/㚬/உ/䂻/㢏/䂻;

    goto :goto_1

    :cond_2
    iget-object v0, p1, L㺴/㚬/உ/䂻/㢏/㭲$䂻;->ḙ:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, L㺴/㚬/உ/䂻/㢏/䂻;->㺴(Landroid/widget/TextView;)V

    iget-object p1, p1, L㺴/㚬/உ/䂻/㢏/㭲$䂻;->ḙ:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, L㺴/㚬/உ/䂻/㢏/㭲;->㢏(I)Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public 㚬()I
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/㭲;->㚬:L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㢏/ℓ;->㹖()L㺴/㚬/உ/䂻/㢏/உ;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㢏/உ;->㭲()I

    move-result v0

    return v0
.end method

.method public final 㢏(I)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, L㺴/㚬/உ/䂻/㢏/㭲$உ;

    invoke-direct {v0, p0, p1}, L㺴/㚬/உ/䂻/㢏/㭲$உ;-><init>(L㺴/㚬/உ/䂻/㢏/㭲;I)V

    return-object v0
.end method

.method public 㫏(Landroid/view/ViewGroup;I)L㺴/㚬/உ/䂻/㢏/㭲$䂻;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, L㺴/㚬/உ/䂻/ℓ;->ㄏ:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance p2, L㺴/㚬/உ/䂻/㢏/㭲$䂻;

    invoke-direct {p2, p1}, L㺴/㚬/உ/䂻/㢏/㭲$䂻;-><init>(Landroid/widget/TextView;)V

    return-object p2
.end method

.method public 㲧(I)I
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/㭲;->㚬:L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㢏/ℓ;->㹖()L㺴/㚬/உ/䂻/㢏/உ;

    move-result-object v0

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㢏/உ;->㞘()L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v0

    iget v0, v0, L㺴/㚬/உ/䂻/㢏/㹖;->ḓ:I

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic 㹖(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$㰫;
    .locals 0

    invoke-virtual {p0, p1, p2}, L㺴/㚬/உ/䂻/㢏/㭲;->㫏(Landroid/view/ViewGroup;I)L㺴/㚬/உ/䂻/㢏/㭲$䂻;

    move-result-object p1

    return-object p1
.end method
