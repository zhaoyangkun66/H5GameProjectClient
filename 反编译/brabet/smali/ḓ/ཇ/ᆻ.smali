.class public final enum Lḓ/ཇ/ᆻ;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "L\u1e13/\u0f47/\u11bb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum 㚬:Lḓ/ཇ/ᆻ;

.field public static final synthetic 㺴:[Lḓ/ཇ/ᆻ;

.field public static final enum 䂻:Lḓ/ཇ/ᆻ;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lḓ/ཇ/ᆻ;

    new-instance v1, Lḓ/ཇ/ᆻ;

    const-string v2, "TOP_DOWN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lḓ/ཇ/ᆻ;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lḓ/ཇ/ᆻ;->䂻:Lḓ/ཇ/ᆻ;

    aput-object v1, v0, v3

    new-instance v1, Lḓ/ཇ/ᆻ;

    const-string v2, "BOTTOM_UP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lḓ/ཇ/ᆻ;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lḓ/ཇ/ᆻ;->㚬:Lḓ/ཇ/ᆻ;

    aput-object v1, v0, v3

    sput-object v0, Lḓ/ཇ/ᆻ;->㺴:[Lḓ/ཇ/ᆻ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lḓ/ཇ/ᆻ;
    .locals 1

    const-class v0, Lḓ/ཇ/ᆻ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lḓ/ཇ/ᆻ;

    return-object p0
.end method

.method public static values()[Lḓ/ཇ/ᆻ;
    .locals 1

    sget-object v0, Lḓ/ཇ/ᆻ;->㺴:[Lḓ/ཇ/ᆻ;

    invoke-virtual {v0}, [Lḓ/ཇ/ᆻ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lḓ/ཇ/ᆻ;

    return-object v0
.end method
