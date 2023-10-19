.class public Lcom/google/android/material/bottomappbar/BottomAppBar$㺴;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;->Ổ(IZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public உ:Z

.field public final synthetic ḓ:Lcom/google/android/material/bottomappbar/BottomAppBar;

.field public final synthetic 㚬:I

.field public final synthetic 㺴:Z

.field public final synthetic 䂻:Landroidx/appcompat/widget/ActionMenuView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$㺴;->ḓ:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iput-object p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$㺴;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    iput p3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$㺴;->㚬:I

    iput-boolean p4, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$㺴;->㺴:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$㺴;->உ:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$㺴;->உ:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$㺴;->ḓ:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$㺴;->䂻:Landroidx/appcompat/widget/ActionMenuView;

    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$㺴;->㚬:I

    iget-boolean v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$㺴;->㺴:Z

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ỷ(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    :cond_0
    return-void
.end method
