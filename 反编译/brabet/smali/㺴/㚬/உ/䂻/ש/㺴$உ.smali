.class public L㺴/㚬/உ/䂻/ש/㺴$உ;
.super L㚬/ℓ/ḓ/㚬/䆀$உ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㺴/㚬/உ/䂻/ש/㺴;->ℓ(Landroid/content/Context;L㺴/㚬/உ/䂻/ש/䆀;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㺴/㚬/உ/䂻/ש/䆀;

.field public final synthetic 䂻:L㺴/㚬/உ/䂻/ש/㺴;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/ש/㺴;L㺴/㚬/உ/䂻/ש/䆀;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/ש/㺴$உ;->䂻:L㺴/㚬/உ/䂻/ש/㺴;

    iput-object p2, p0, L㺴/㚬/உ/䂻/ש/㺴$உ;->உ:L㺴/㚬/உ/䂻/ש/䆀;

    invoke-direct {p0}, L㚬/ℓ/ḓ/㚬/䆀$உ;-><init>()V

    return-void
.end method


# virtual methods
.method public 㚬(I)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ש/㺴$உ;->䂻:L㺴/㚬/உ/䂻/ש/㺴;

    const/4 v1, 0x1

    invoke-static {v0, v1}, L㺴/㚬/உ/䂻/ש/㺴;->㚬(L㺴/㚬/உ/䂻/ש/㺴;Z)Z

    iget-object v0, p0, L㺴/㚬/உ/䂻/ש/㺴$உ;->உ:L㺴/㚬/உ/䂻/ש/䆀;

    invoke-virtual {v0, p1}, L㺴/㚬/உ/䂻/ש/䆀;->உ(I)V

    return-void
.end method

.method public 㺴(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ש/㺴$உ;->䂻:L㺴/㚬/உ/䂻/ש/㺴;

    iget v1, v0, L㺴/㚬/உ/䂻/ש/㺴;->㚬:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {v0, p1}, L㺴/㚬/உ/䂻/ש/㺴;->䂻(L㺴/㚬/உ/䂻/ש/㺴;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, L㺴/㚬/உ/䂻/ש/㺴$உ;->䂻:L㺴/㚬/உ/䂻/ש/㺴;

    const/4 v0, 0x1

    invoke-static {p1, v0}, L㺴/㚬/உ/䂻/ש/㺴;->㚬(L㺴/㚬/உ/䂻/ש/㺴;Z)Z

    iget-object p1, p0, L㺴/㚬/உ/䂻/ש/㺴$உ;->உ:L㺴/㚬/உ/䂻/ש/䆀;

    iget-object v0, p0, L㺴/㚬/உ/䂻/ש/㺴$உ;->䂻:L㺴/㚬/உ/䂻/ש/㺴;

    invoke-static {v0}, L㺴/㚬/உ/䂻/ש/㺴;->உ(L㺴/㚬/உ/䂻/ש/㺴;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, L㺴/㚬/உ/䂻/ש/䆀;->䂻(Landroid/graphics/Typeface;Z)V

    return-void
.end method
