.class public L㚬/㖪/உ/உ/䂻$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㖪/உ/உ/䂻;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 䂻:L㚬/㖪/உ/உ/䂻;


# direct methods
.method public constructor <init>(L㚬/㖪/உ/உ/䂻;)V
    .locals 0

    iput-object p1, p0, L㚬/㖪/உ/உ/䂻$உ;->䂻:L㚬/㖪/உ/உ/䂻;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p1, p0, L㚬/㖪/உ/உ/䂻$உ;->䂻:L㚬/㖪/உ/உ/䂻;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    iget-object p1, p0, L㚬/㖪/உ/உ/䂻$உ;->䂻:L㚬/㖪/உ/உ/䂻;

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p1, p0, L㚬/㖪/உ/உ/䂻$உ;->䂻:L㚬/㖪/உ/உ/䂻;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
