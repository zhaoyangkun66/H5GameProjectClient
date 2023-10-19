.class public L㺴/㚬/உ/䂻/ḙ/㺴$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/உ/䂻/ḙ/㺴;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u40bb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "L\u3eb4/\u36ac/\u0b89/\u40bb/\u1e19/\u3eb4$\u1e13;",
        ">;"
    }
.end annotation


# static fields
.field public static final 䂻:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u1e19/\u3eb4$\u1e13;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final உ:L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, L㺴/㚬/உ/䂻/ḙ/㺴$䂻;

    invoke-direct {v0}, L㺴/㚬/உ/䂻/ḙ/㺴$䂻;-><init>()V

    sput-object v0, L㺴/㚬/உ/䂻/ḙ/㺴$䂻;->䂻:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;-><init>(L㺴/㚬/உ/䂻/ḙ/㺴$உ;)V

    iput-object v0, p0, L㺴/㚬/உ/䂻/ḙ/㺴$䂻;->உ:L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;

    check-cast p3, L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;

    invoke-virtual {p0, p1, p2, p3}, L㺴/㚬/உ/䂻/ḙ/㺴$䂻;->உ(FL㺴/㚬/உ/䂻/ḙ/㺴$ḓ;L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;)L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;

    move-result-object p1

    return-object p1
.end method

.method public உ(FL㺴/㚬/உ/䂻/ḙ/㺴$ḓ;L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;)L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;
    .locals 4

    iget-object v0, p0, L㺴/㚬/உ/䂻/ḙ/㺴$䂻;->உ:L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;

    iget v1, p2, L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;->உ:F

    iget v2, p3, L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;->உ:F

    invoke-static {v1, v2, p1}, L㺴/㚬/உ/䂻/ڈ/உ;->㚬(FFF)F

    move-result v1

    iget v2, p2, L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;->䂻:F

    iget v3, p3, L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;->䂻:F

    invoke-static {v2, v3, p1}, L㺴/㚬/உ/䂻/ڈ/உ;->㚬(FFF)F

    move-result v2

    iget p2, p2, L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;->㚬:F

    iget p3, p3, L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;->㚬:F

    invoke-static {p2, p3, p1}, L㺴/㚬/உ/䂻/ڈ/உ;->㚬(FFF)F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;->உ(FFF)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/ḙ/㺴$䂻;->உ:L㺴/㚬/உ/䂻/ḙ/㺴$ḓ;

    return-object p1
.end method
