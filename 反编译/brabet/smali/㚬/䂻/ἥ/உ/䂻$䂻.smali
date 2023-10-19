.class public L㚬/䂻/ἥ/உ/䂻$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ἥ/உ/䂻;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u40bb"
.end annotation


# instance fields
.field public 䂻:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ἥ/உ/䂻$䂻;->䂻:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ἥ/உ/䂻$䂻;->䂻:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public உ()Landroid/graphics/drawable/Drawable$Callback;
    .locals 2

    iget-object v0, p0, L㚬/䂻/ἥ/உ/䂻$䂻;->䂻:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    iput-object v1, p0, L㚬/䂻/ἥ/உ/䂻$䂻;->䂻:Landroid/graphics/drawable/Drawable$Callback;

    return-object v0
.end method

.method public 䂻(Landroid/graphics/drawable/Drawable$Callback;)L㚬/䂻/ἥ/உ/䂻$䂻;
    .locals 0

    iput-object p1, p0, L㚬/䂻/ἥ/உ/䂻$䂻;->䂻:Landroid/graphics/drawable/Drawable$Callback;

    return-object p0
.end method
