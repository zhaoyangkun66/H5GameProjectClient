.class public Landroidx/activity/ComponentActivity$䂻$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/ComponentActivity$䂻;->䆀(IL㚬/உ/ḓ/䆀/உ;Ljava/lang/Object;L㚬/ℓ/㺴/䂻;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:L㚬/உ/ḓ/䆀/உ$உ;

.field public final synthetic 㺴:Landroidx/activity/ComponentActivity$䂻;

.field public final synthetic 䂻:I


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity$䂻;IL㚬/உ/ḓ/䆀/உ$உ;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/ComponentActivity$䂻$உ;->㺴:Landroidx/activity/ComponentActivity$䂻;

    iput p2, p0, Landroidx/activity/ComponentActivity$䂻$உ;->䂻:I

    iput-object p3, p0, Landroidx/activity/ComponentActivity$䂻$உ;->㚬:L㚬/உ/ḓ/䆀/உ$உ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroidx/activity/ComponentActivity$䂻$உ;->㺴:Landroidx/activity/ComponentActivity$䂻;

    iget v1, p0, Landroidx/activity/ComponentActivity$䂻$உ;->䂻:I

    iget-object v2, p0, Landroidx/activity/ComponentActivity$䂻$உ;->㚬:L㚬/உ/ḓ/䆀/உ$உ;

    invoke-virtual {v2}, L㚬/உ/ḓ/䆀/உ$உ;->உ()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/activity/result/ActivityResultRegistry;->㚬(ILjava/lang/Object;)Z

    return-void
.end method
