.class public L㺴/㚬/உ/䂻/㢏/ἥ;
.super Landroid/widget/BaseAdapter;
.source ""


# static fields
.field public static final 䆀:I


# instance fields
.field public final ḓ:L㺴/㚬/உ/䂻/㢏/உ;

.field public final 㚬:L㺴/㚬/உ/䂻/㢏/㺴;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u3eb4<",
            "*>;"
        }
    .end annotation
.end field

.field public 㺴:L㺴/㚬/உ/䂻/㢏/㚬;

.field public final 䂻:L㺴/㚬/உ/䂻/㢏/㹖;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, L㺴/㚬/உ/䂻/㢏/㞘;->㧦()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sput v0, L㺴/㚬/உ/䂻/㢏/ἥ;->䆀:I

    return-void
.end method

.method public constructor <init>(L㺴/㚬/உ/䂻/㢏/㹖;L㺴/㚬/உ/䂻/㢏/㺴;L㺴/㚬/உ/䂻/㢏/உ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u3e56;",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u3eb4<",
            "*>;",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u0b89;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->䂻:L㺴/㚬/உ/䂻/㢏/㹖;

    iput-object p2, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->㚬:L㺴/㚬/உ/䂻/㢏/㺴;

    iput-object p3, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->ḓ:L㺴/㚬/உ/䂻/㢏/உ;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->䂻:L㺴/㚬/உ/䂻/㢏/㹖;

    iget v0, v0, L㺴/㚬/உ/䂻/㢏/㹖;->ᆻ:I

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㢏/ἥ;->䂻()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㢏/ἥ;->㚬(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->䂻:L㺴/㚬/உ/䂻/㢏/㹖;

    iget v0, v0, L㺴/㚬/உ/䂻/㢏/㹖;->䆀:I

    div-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, L㺴/㚬/உ/䂻/㢏/ἥ;->㺴(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public உ(I)I
    .locals 1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㢏/ἥ;->䂻()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public ಫ(I)Z
    .locals 1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㢏/ἥ;->䂻()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㢏/ἥ;->ℓ()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public ᆻ(I)Z
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->䂻:L㺴/㚬/உ/䂻/㢏/㹖;

    iget v1, v1, L㺴/㚬/உ/䂻/㢏/㹖;->䆀:I

    rem-int/2addr p1, v1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final ḓ(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->㺴:L㺴/㚬/உ/䂻/㢏/㚬;

    if-nez v0, :cond_0

    new-instance v0, L㺴/㚬/உ/䂻/㢏/㚬;

    invoke-direct {v0, p1}, L㺴/㚬/உ/䂻/㢏/㚬;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->㺴:L㺴/㚬/உ/䂻/㢏/㚬;

    :cond_0
    return-void
.end method

.method public ℓ()I
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->䂻:L㺴/㚬/உ/䂻/㢏/㹖;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㢏/㹖;->ἥ()I

    move-result v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->䂻:L㺴/㚬/உ/䂻/㢏/㹖;

    iget v1, v1, L㺴/㚬/உ/䂻/㢏/㹖;->ᆻ:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public ㄏ(I)I
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->䂻:L㺴/㚬/உ/䂻/㢏/㹖;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㢏/㹖;->ἥ()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public 㚬(I)Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->䂻:L㺴/㚬/உ/䂻/㢏/㹖;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㢏/㹖;->ἥ()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㢏/ἥ;->ℓ()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->䂻:L㺴/㚬/உ/䂻/㢏/㹖;

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㢏/ἥ;->ㄏ(I)I

    move-result p1

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/㢏/㹖;->ཇ(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public 㺴(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 5

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, L㺴/㚬/உ/䂻/㢏/ἥ;->ḓ(Landroid/content/Context;)V

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, L㺴/㚬/உ/䂻/ℓ;->㺴:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    :cond_0
    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㢏/ἥ;->䂻()I

    move-result p2

    sub-int p2, p1, p2

    const/4 p3, 0x1

    if-ltz p2, :cond_3

    iget-object v2, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->䂻:L㺴/㚬/உ/䂻/㢏/㹖;

    iget v3, v2, L㺴/㚬/உ/䂻/㢏/㹖;->ᆻ:I

    if-lt p2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr p2, p3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->䂻:L㺴/㚬/உ/䂻/㢏/㹖;

    invoke-virtual {v2, p2}, L㺴/㚬/உ/䂻/㢏/㹖;->ཇ(I)J

    move-result-wide v2

    iget-object p2, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->䂻:L㺴/㚬/உ/䂻/㢏/㹖;

    iget p2, p2, L㺴/㚬/உ/䂻/㢏/㹖;->ḓ:I

    invoke-static {}, L㺴/㚬/உ/䂻/㢏/㹖;->㭲()L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object v4

    iget v4, v4, L㺴/㚬/உ/䂻/㢏/㹖;->ḓ:I

    if-ne p2, v4, :cond_2

    invoke-static {v2, v3}, L㺴/㚬/உ/䂻/㢏/ḓ;->உ(J)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-static {v2, v3}, L㺴/㚬/உ/䂻/㢏/ḓ;->㚬(J)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    :cond_3
    :goto_1
    const/16 p2, 0x8

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㢏/ἥ;->㚬(I)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget-object p2, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->ḓ:L㺴/㚬/உ/䂻/㢏/உ;

    invoke-virtual {p2}, L㺴/㚬/உ/䂻/㢏/உ;->ཇ()L㺴/㚬/உ/䂻/㢏/உ$㚬;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p2, v2, v3}, L㺴/㚬/உ/䂻/㢏/உ$㚬;->ḓ(J)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p2, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->㚬:L㺴/㚬/உ/䂻/㢏/㺴;

    invoke-interface {p2}, L㺴/㚬/உ/䂻/㢏/㺴;->ㄏ()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, L㺴/㚬/உ/䂻/㢏/㞘;->உ(J)J

    move-result-wide v3

    invoke-static {v1, v2}, L㺴/㚬/உ/䂻/㢏/㞘;->உ(J)J

    move-result-wide v1

    cmp-long p3, v3, v1

    if-nez p3, :cond_5

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->㺴:L㺴/㚬/உ/䂻/㢏/㚬;

    iget-object p1, p1, L㺴/㚬/உ/䂻/㢏/㚬;->䂻:L㺴/㚬/உ/䂻/㢏/䂻;

    :goto_3
    invoke-virtual {p1, v0}, L㺴/㚬/உ/䂻/㢏/䂻;->㺴(Landroid/widget/TextView;)V

    return-object v0

    :cond_6
    invoke-static {}, L㺴/㚬/உ/䂻/㢏/㞘;->ㄏ()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long p1, p2, v1

    if-nez p1, :cond_7

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->㺴:L㺴/㚬/உ/䂻/㢏/㚬;

    iget-object p1, p1, L㺴/㚬/உ/䂻/㢏/㚬;->㚬:L㺴/㚬/உ/䂻/㢏/䂻;

    goto :goto_3

    :cond_7
    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->㺴:L㺴/㚬/உ/䂻/㢏/㚬;

    iget-object p1, p1, L㺴/㚬/உ/䂻/㢏/㚬;->உ:L㺴/㚬/உ/䂻/㢏/䂻;

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->㺴:L㺴/㚬/உ/䂻/㢏/㚬;

    iget-object p1, p1, L㺴/㚬/உ/䂻/㢏/㚬;->ᆻ:L㺴/㚬/உ/䂻/㢏/䂻;

    goto :goto_3
.end method

.method public 䂻()I
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->䂻:L㺴/㚬/உ/䂻/㢏/㹖;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/㢏/㹖;->ἥ()I

    move-result v0

    return v0
.end method

.method public 䆀(I)Z
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ἥ;->䂻:L㺴/㚬/உ/䂻/㢏/㹖;

    iget v0, v0, L㺴/㚬/உ/䂻/㢏/㹖;->䆀:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
