.class public Landroidx/appcompat/widget/FitWindowsLinearLayout;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements L㚬/䂻/ბ/㨃;


# instance fields
.field public 䂻:L㚬/䂻/ბ/㨃$உ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/FitWindowsLinearLayout;->䂻:L㚬/䂻/ბ/㨃$உ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, L㚬/䂻/ბ/㨃$உ;->உ(Landroid/graphics/Rect;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setOnFitSystemWindowsListener(L㚬/䂻/ბ/㨃$உ;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/FitWindowsLinearLayout;->䂻:L㚬/䂻/ბ/㨃$உ;

    return-void
.end method
