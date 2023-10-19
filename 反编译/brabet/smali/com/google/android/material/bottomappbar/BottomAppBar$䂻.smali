.class public Lcom/google/android/material/bottomappbar/BottomAppBar$䂻;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton$䂻;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;->㽛(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:I

.field public final synthetic 䂻:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$䂻;->䂻:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$䂻;->உ:I

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$䂻;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$䂻;->䂻:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$䂻;->உ:I

    invoke-static {v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ᣑ(Lcom/google/android/material/bottomappbar/BottomAppBar;I)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationX(F)V

    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$䂻$உ;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$䂻$உ;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar$䂻;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->㭲(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$䂻;)V

    return-void
.end method
