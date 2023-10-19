.class public final L㺴/㚬/உ/䂻/ש/உ;
.super L㺴/㚬/உ/䂻/ש/䆀;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㺴/㚬/உ/䂻/ש/உ$உ;
    }
.end annotation


# instance fields
.field public final உ:Landroid/graphics/Typeface;

.field public 㚬:Z

.field public final 䂻:L㺴/㚬/உ/䂻/ש/உ$உ;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/ש/உ$உ;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, L㺴/㚬/உ/䂻/ש/䆀;-><init>()V

    iput-object p2, p0, L㺴/㚬/உ/䂻/ש/உ;->உ:Landroid/graphics/Typeface;

    iput-object p1, p0, L㺴/㚬/உ/䂻/ש/உ;->䂻:L㺴/㚬/உ/䂻/ש/உ$உ;

    return-void
.end method


# virtual methods
.method public உ(I)V
    .locals 0

    iget-object p1, p0, L㺴/㚬/உ/䂻/ש/உ;->உ:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ש/உ;->㺴(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public 㚬()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, L㺴/㚬/உ/䂻/ש/உ;->㚬:Z

    return-void
.end method

.method public final 㺴(Landroid/graphics/Typeface;)V
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/ש/உ;->㚬:Z

    if-nez v0, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/ש/உ;->䂻:L㺴/㚬/உ/䂻/ש/உ$உ;

    invoke-interface {v0, p1}, L㺴/㚬/உ/䂻/ש/உ$உ;->உ(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public 䂻(Landroid/graphics/Typeface;Z)V
    .locals 0

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ש/உ;->㺴(Landroid/graphics/Typeface;)V

    return-void
.end method
