.class public abstract Lḓ/ᓭ/㺴/㧦;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lḓ/ᓭ/㺴/ℓ;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "L\u1e13/\u14ed/\u3eb4/\u2113<",
        "TR;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lḓ/ᓭ/㺴/㧦;->arity:I

    return-void
.end method


# virtual methods
.method public getArity()I
    .locals 1

    iget v0, p0, Lḓ/ᓭ/㺴/㧦;->arity:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lḓ/ᓭ/㺴/㲝;->㺴(Lḓ/ᓭ/㺴/㧦;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reflection.renderLambdaToString(this)"

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
