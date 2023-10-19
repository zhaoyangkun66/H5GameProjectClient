.class public final enum L㚬/㧦/㺴/ᾦ$ḓ$䂻;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㧦/㺴/ᾦ$ḓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "\u40bb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "L\u36ac/\u39e6/\u3eb4/\u1fa6$\u1e13$\u40bb;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic ḓ:[L㚬/㧦/㺴/ᾦ$ḓ$䂻;

.field public static final enum 㚬:L㚬/㧦/㺴/ᾦ$ḓ$䂻;

.field public static final enum 㺴:L㚬/㧦/㺴/ᾦ$ḓ$䂻;

.field public static final enum 䂻:L㚬/㧦/㺴/ᾦ$ḓ$䂻;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, L㚬/㧦/㺴/ᾦ$ḓ$䂻;-><init>(Ljava/lang/String;I)V

    sput-object v0, L㚬/㧦/㺴/ᾦ$ḓ$䂻;->䂻:L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    new-instance v1, L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    const-string v3, "ADDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, L㚬/㧦/㺴/ᾦ$ḓ$䂻;-><init>(Ljava/lang/String;I)V

    sput-object v1, L㚬/㧦/㺴/ᾦ$ḓ$䂻;->㚬:L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    new-instance v3, L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    const-string v5, "REMOVING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, L㚬/㧦/㺴/ᾦ$ḓ$䂻;-><init>(Ljava/lang/String;I)V

    sput-object v3, L㚬/㧦/㺴/ᾦ$ḓ$䂻;->㺴:L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    const/4 v5, 0x3

    new-array v5, v5, [L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, L㚬/㧦/㺴/ᾦ$ḓ$䂻;->ḓ:[L㚬/㧦/㺴/ᾦ$ḓ$䂻;

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

.method public static valueOf(Ljava/lang/String;)L㚬/㧦/㺴/ᾦ$ḓ$䂻;
    .locals 1

    const-class v0, L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    return-object p0
.end method

.method public static values()[L㚬/㧦/㺴/ᾦ$ḓ$䂻;
    .locals 1

    sget-object v0, L㚬/㧦/㺴/ᾦ$ḓ$䂻;->ḓ:[L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    invoke-virtual {v0}, [L㚬/㧦/㺴/ᾦ$ḓ$䂻;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [L㚬/㧦/㺴/ᾦ$ḓ$䂻;

    return-object v0
.end method
