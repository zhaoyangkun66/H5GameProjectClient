.class public Lcom/google/android/material/floatingactionbutton/FloatingActionButton$㺴;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㺴/㚬/உ/䂻/ಋ/䂻$ㄏ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u3eb4"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
        ">",
        "Ljava/lang/Object;",
        "L\u3eb4/\u36ac/\u0b89/\u40bb/\u0c8b/\u40bb$\u310f;"
    }
.end annotation


# instance fields
.field public final உ:L㺴/㚬/உ/䂻/㹖/㧦;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u3e56/\u39e6<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic 䂻:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;L㺴/㚬/உ/䂻/㹖/㧦;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u3e56/\u39e6<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$㺴;->䂻:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$㺴;->உ:L㺴/㚬/உ/䂻/㹖/㧦;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$㺴;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$㺴;

    iget-object p1, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$㺴;->உ:L㺴/㚬/உ/䂻/㹖/㧦;

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$㺴;->உ:L㺴/㚬/உ/䂻/㹖/㧦;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$㺴;->உ:L㺴/㚬/உ/䂻/㹖/㧦;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public உ()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$㺴;->உ:L㺴/㚬/உ/䂻/㹖/㧦;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$㺴;->䂻:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-interface {v0, v1}, L㺴/㚬/உ/䂻/㹖/㧦;->உ(Landroid/view/View;)V

    return-void
.end method

.method public 䂻()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$㺴;->உ:L㺴/㚬/உ/䂻/㹖/㧦;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$㺴;->䂻:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-interface {v0, v1}, L㺴/㚬/உ/䂻/㹖/㧦;->䂻(Landroid/view/View;)V

    return-void
.end method
