.class public L㚬/䂻/ἥ/உ/䂻$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/䂻/ἥ/உ/䂻;->ᆻ(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 䂻:L㚬/䂻/ἥ/உ/䂻;


# direct methods
.method public constructor <init>(L㚬/䂻/ἥ/உ/䂻;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ἥ/உ/䂻$உ;->䂻:L㚬/䂻/ἥ/உ/䂻;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ἥ/உ/䂻$உ;->䂻:L㚬/䂻/ἥ/உ/䂻;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, L㚬/䂻/ἥ/உ/䂻;->உ(Z)V

    iget-object v0, p0, L㚬/䂻/ἥ/உ/䂻$உ;->䂻:L㚬/䂻/ἥ/உ/䂻;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
