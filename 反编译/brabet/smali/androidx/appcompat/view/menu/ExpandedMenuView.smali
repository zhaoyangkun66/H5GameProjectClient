.class public final Landroidx/appcompat/view/menu/ExpandedMenuView;
.super Landroid/widget/ListView;
.source ""

# interfaces
.implements L㚬/䂻/ᓭ/ಫ/ᆻ$䂻;
.implements L㚬/䂻/ᓭ/ಫ/ཇ;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final 㺴:[I


# instance fields
.field public 㚬:I

.field public 䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/appcompat/view/menu/ExpandedMenuView;->㺴:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100d4
        0x1010129
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/ExpandedMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget-object v0, Landroidx/appcompat/view/menu/ExpandedMenuView;->㺴:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, L㚬/䂻/ბ/ᣝ;->㖪(Landroid/content/Context;Landroid/util/AttributeSet;[III)L㚬/䂻/ბ/ᣝ;

    move-result-object p1

    invoke-virtual {p1, v1}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, v1}, L㚬/䂻/ბ/ᣝ;->ᆻ(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->ᆻ(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p1}, L㚬/䂻/ბ/ᣝ;->㢏()V

    return-void
.end method


# virtual methods
.method public getWindowAnimations()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/ExpandedMenuView;->㚬:I

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ExpandedMenuView;->உ(L㚬/䂻/ᓭ/ಫ/ㄏ;)Z

    return-void
.end method

.method public உ(L㚬/䂻/ᓭ/ಫ/ㄏ;)Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ExpandedMenuView;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㭢(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public 䂻(L㚬/䂻/ᓭ/ಫ/ᆻ;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ExpandedMenuView;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    return-void
.end method
