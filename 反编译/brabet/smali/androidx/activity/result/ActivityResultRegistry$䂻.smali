.class public Landroidx/activity/result/ActivityResultRegistry$䂻;
.super L㚬/உ/ḓ/㚬;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/result/ActivityResultRegistry;->ㄏ(Ljava/lang/String;L㚬/உ/ḓ/䆀/உ;L㚬/உ/ḓ/䂻;)L㚬/உ/ḓ/㚬;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "L\u36ac/\u0b89/\u1e13/\u36ac<",
        "TI;>;"
    }
.end annotation


# instance fields
.field public final synthetic உ:I

.field public final synthetic 㚬:Ljava/lang/String;

.field public final synthetic 㺴:Landroidx/activity/result/ActivityResultRegistry;

.field public final synthetic 䂻:L㚬/உ/ḓ/䆀/உ;


# direct methods
.method public constructor <init>(Landroidx/activity/result/ActivityResultRegistry;IL㚬/உ/ḓ/䆀/உ;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$䂻;->㺴:Landroidx/activity/result/ActivityResultRegistry;

    iput p2, p0, Landroidx/activity/result/ActivityResultRegistry$䂻;->உ:I

    iput-object p3, p0, Landroidx/activity/result/ActivityResultRegistry$䂻;->䂻:L㚬/உ/ḓ/䆀/உ;

    iput-object p4, p0, Landroidx/activity/result/ActivityResultRegistry$䂻;->㚬:Ljava/lang/String;

    invoke-direct {p0}, L㚬/உ/ḓ/㚬;-><init>()V

    return-void
.end method


# virtual methods
.method public உ()L㚬/உ/ḓ/䆀/உ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "L\u36ac/\u0b89/\u1e13/\u4180/\u0b89<",
            "TI;*>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$䂻;->䂻:L㚬/உ/ḓ/䆀/உ;

    return-object v0
.end method

.method public 㚬(Ljava/lang/Object;L㚬/ℓ/㺴/䂻;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "L\u36ac/\u2113/\u3eb4/\u40bb;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$䂻;->㺴:Landroidx/activity/result/ActivityResultRegistry;

    iget v1, p0, Landroidx/activity/result/ActivityResultRegistry$䂻;->உ:I

    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry$䂻;->䂻:L㚬/உ/ḓ/䆀/உ;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/activity/result/ActivityResultRegistry;->䆀(IL㚬/உ/ḓ/䆀/உ;Ljava/lang/Object;L㚬/ℓ/㺴/䂻;)V

    return-void
.end method

.method public 㺴()V
    .locals 2

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$䂻;->㺴:Landroidx/activity/result/ActivityResultRegistry;

    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$䂻;->㚬:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultRegistry;->㹖(Ljava/lang/String;)V

    return-void
.end method
