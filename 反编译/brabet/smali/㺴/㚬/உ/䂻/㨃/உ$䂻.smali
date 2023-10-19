.class public final L㺴/㚬/உ/䂻/㨃/உ$䂻;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/உ/䂻/㨃/உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "\u40bb"
.end annotation


# instance fields
.field public உ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

.field public 䂻:Z


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/ᱹ/ᆻ;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object p1, p0, L㺴/㚬/உ/䂻/㨃/உ$䂻;->உ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    const/4 p1, 0x0

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/㨃/உ$䂻;->䂻:Z

    return-void
.end method

.method public constructor <init>(L㺴/㚬/உ/䂻/㨃/உ$䂻;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iget-object v0, p1, L㺴/㚬/உ/䂻/㨃/உ$䂻;->உ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    invoke-virtual {v0}, L㺴/㚬/உ/䂻/ᱹ/ᆻ;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    iput-object v0, p0, L㺴/㚬/உ/䂻/㨃/உ$䂻;->உ:L㺴/㚬/உ/䂻/ᱹ/ᆻ;

    iget-boolean p1, p1, L㺴/㚬/உ/䂻/㨃/உ$䂻;->䂻:Z

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/㨃/உ$䂻;->䂻:Z

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, L㺴/㚬/உ/䂻/㨃/உ$䂻;->உ()L㺴/㚬/உ/䂻/㨃/உ;

    move-result-object v0

    return-object v0
.end method

.method public உ()L㺴/㚬/உ/䂻/㨃/உ;
    .locals 3

    new-instance v0, L㺴/㚬/உ/䂻/㨃/உ;

    new-instance v1, L㺴/㚬/உ/䂻/㨃/உ$䂻;

    invoke-direct {v1, p0}, L㺴/㚬/உ/䂻/㨃/உ$䂻;-><init>(L㺴/㚬/உ/䂻/㨃/உ$䂻;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, L㺴/㚬/உ/䂻/㨃/உ;-><init>(L㺴/㚬/உ/䂻/㨃/உ$䂻;L㺴/㚬/உ/䂻/㨃/உ$உ;)V

    return-object v0
.end method
