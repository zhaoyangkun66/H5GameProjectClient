.class public Lcom/google/android/material/transformation/FabTransformationSheetBehavior;
.super Lcom/google/android/material/transformation/FabTransformationBehavior;
.source ""


# instance fields
.field public ㄏ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/transformation/FabTransformationBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public ග(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$ḓ;
    .locals 2

    if-eqz p2, :cond_0

    sget p2, L㺴/㚬/உ/䂻/உ;->㺴:I

    goto :goto_0

    :cond_0
    sget p2, L㺴/㚬/உ/䂻/உ;->㚬:I

    :goto_0
    new-instance v0, Lcom/google/android/material/transformation/FabTransformationBehavior$ḓ;

    invoke-direct {v0}, Lcom/google/android/material/transformation/FabTransformationBehavior$ḓ;-><init>()V

    invoke-static {p1, p2}, L㺴/㚬/உ/䂻/㹖/ℓ;->㚬(Landroid/content/Context;I)L㺴/㚬/உ/䂻/㹖/ℓ;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$ḓ;->உ:L㺴/㚬/உ/䂻/㹖/ℓ;

    new-instance p1, L㺴/㚬/உ/䂻/㹖/ಫ;

    const/16 p2, 0x11

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1, v1}, L㺴/㚬/உ/䂻/㹖/ಫ;-><init>(IFF)V

    iput-object p1, v0, Lcom/google/android/material/transformation/FabTransformationBehavior$ḓ;->䂻:L㺴/㚬/உ/䂻/㹖/ಫ;

    return-object v0
.end method

.method public ᱹ(Landroid/view/View;Landroid/view/View;ZZ)Z
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->㠭(Landroid/view/View;Z)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->ᱹ(Landroid/view/View;Landroid/view/View;ZZ)Z

    move-result p1

    return p1
.end method

.method public final 㠭(Landroid/view/View;Z)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    if-eqz p2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->ㄏ:Ljava/util/Map;

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_7

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;

    invoke-virtual {v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$䆀;->䆀()Landroidx/coordinatorlayout/widget/CoordinatorLayout$㚬;

    move-result-object v6

    instance-of v6, v6, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eq v5, p1, :cond_6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    if-nez p2, :cond_4

    iget-object v6, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->ㄏ:Ljava/util/Map;

    if-eqz v6, :cond_6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->ㄏ:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    :cond_4
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v3, :cond_5

    iget-object v6, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->ㄏ:Ljava/util/Map;

    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v6, 0x4

    :goto_2
    invoke-static {v5, v6}, L㚬/ℓ/ἥ/㭲;->ⷜ(Landroid/view/View;I)V

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    if-nez p2, :cond_8

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationSheetBehavior;->ㄏ:Ljava/util/Map;

    :cond_8
    return-void
.end method
