.class public L㺴/㚬/உ/䂻/㢏/ᆻ;
.super Landroid/widget/BaseAdapter;
.source ""


# static fields
.field public static final ḓ:I


# instance fields
.field public final 㚬:I

.field public final 㺴:I

.field public final 䂻:Ljava/util/Calendar;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, L㺴/㚬/உ/䂻/㢏/ᆻ;->ḓ:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, L㺴/㚬/உ/䂻/㢏/㞘;->㧦()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, L㺴/㚬/உ/䂻/㢏/ᆻ;->䂻:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v1

    iput v1, p0, L㺴/㚬/உ/䂻/㢏/ᆻ;->㚬:I

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, L㺴/㚬/உ/䂻/㢏/ᆻ;->㺴:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㢏/ᆻ;->㚬:I

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㢏/ᆻ;->உ(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, L㺴/㚬/உ/䂻/ℓ;->ḓ:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    :cond_0
    iget-object p2, p0, L㺴/㚬/உ/䂻/㢏/ᆻ;->䂻:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㢏/ᆻ;->䂻(I)I

    move-result p1

    const/4 v2, 0x7

    invoke-virtual {p2, v2, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㢏/ᆻ;->䂻:Ljava/util/Calendar;

    sget p2, L㺴/㚬/உ/䂻/㢏/ᆻ;->ḓ:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p1, v2, p2, v3}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, L㺴/㚬/உ/䂻/ㄏ;->ㄏ:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p3, p0, L㺴/㚬/உ/䂻/㢏/ᆻ;->䂻:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p3, v2, v3, v4}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public உ(I)Ljava/lang/Integer;
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㢏/ᆻ;->㚬:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㢏/ᆻ;->䂻(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final 䂻(I)I
    .locals 1

    iget v0, p0, L㺴/㚬/உ/䂻/㢏/ᆻ;->㺴:I

    add-int/2addr p1, v0

    iget v0, p0, L㺴/㚬/உ/䂻/㢏/ᆻ;->㚬:I

    if-le p1, v0, :cond_0

    sub-int/2addr p1, v0

    :cond_0
    return p1
.end method
