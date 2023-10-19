.class public L㺴/㚬/உ/䂻/㹖/உ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final உ:Landroid/animation/TimeInterpolator;

.field public static final ḓ:Landroid/animation/TimeInterpolator;

.field public static final 㚬:Landroid/animation/TimeInterpolator;

.field public static final 㺴:Landroid/animation/TimeInterpolator;

.field public static final 䂻:Landroid/animation/TimeInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, L㺴/㚬/உ/䂻/㹖/உ;->உ:Landroid/animation/TimeInterpolator;

    new-instance v0, L㚬/㹖/உ/உ/䂻;

    invoke-direct {v0}, L㚬/㹖/உ/உ/䂻;-><init>()V

    sput-object v0, L㺴/㚬/உ/䂻/㹖/உ;->䂻:Landroid/animation/TimeInterpolator;

    new-instance v0, L㚬/㹖/உ/உ/உ;

    invoke-direct {v0}, L㚬/㹖/உ/உ/உ;-><init>()V

    sput-object v0, L㺴/㚬/உ/䂻/㹖/உ;->㚬:Landroid/animation/TimeInterpolator;

    new-instance v0, L㚬/㹖/உ/உ/㚬;

    invoke-direct {v0}, L㚬/㹖/உ/உ/㚬;-><init>()V

    sput-object v0, L㺴/㚬/உ/䂻/㹖/உ;->㺴:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, L㺴/㚬/உ/䂻/㹖/உ;->ḓ:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public static உ(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float p2, p2, p1

    add-float/2addr p0, p2

    return p0
.end method
