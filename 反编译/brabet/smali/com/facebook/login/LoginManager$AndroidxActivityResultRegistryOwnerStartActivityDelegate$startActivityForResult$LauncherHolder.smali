.class public final Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LauncherHolder"
.end annotation


# instance fields
.field private launcher:L㚬/உ/ḓ/㚬;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u0b89/\u1e13/\u36ac<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLauncher()L㚬/உ/ḓ/㚬;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "L\u36ac/\u0b89/\u1e13/\u36ac<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder;->launcher:L㚬/உ/ḓ/㚬;

    return-object v0
.end method

.method public final setLauncher(L㚬/உ/ḓ/㚬;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u0b89/\u1e13/\u36ac<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/login/LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder;->launcher:L㚬/உ/ḓ/㚬;

    return-void
.end method
