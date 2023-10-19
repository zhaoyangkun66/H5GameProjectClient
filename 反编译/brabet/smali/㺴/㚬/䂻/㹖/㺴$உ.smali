.class public final enum L㺴/㚬/䂻/㹖/㺴$உ;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/䂻/㹖/㺴;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "\u0b89"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "L\u3eb4/\u36ac/\u40bb/\u3e56/\u3eb4$\u0b89;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ḓ:L㺴/㚬/䂻/㹖/㺴$உ;

.field public static final enum 㚬:L㺴/㚬/䂻/㹖/㺴$உ;

.field public static final enum 㺴:L㺴/㚬/䂻/㹖/㺴$உ;

.field public static final enum 䂻:L㺴/㚬/䂻/㹖/㺴$உ;

.field public static final synthetic 䆀:[L㺴/㚬/䂻/㹖/㺴$உ;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, L㺴/㚬/䂻/㹖/㺴$உ;

    const-string v1, "UNCODABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, L㺴/㚬/䂻/㹖/㺴$உ;-><init>(Ljava/lang/String;I)V

    sput-object v0, L㺴/㚬/䂻/㹖/㺴$உ;->䂻:L㺴/㚬/䂻/㹖/㺴$உ;

    new-instance v1, L㺴/㚬/䂻/㹖/㺴$உ;

    const-string v3, "ONE_DIGIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, L㺴/㚬/䂻/㹖/㺴$உ;-><init>(Ljava/lang/String;I)V

    sput-object v1, L㺴/㚬/䂻/㹖/㺴$உ;->㚬:L㺴/㚬/䂻/㹖/㺴$உ;

    new-instance v3, L㺴/㚬/䂻/㹖/㺴$உ;

    const-string v5, "TWO_DIGITS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, L㺴/㚬/䂻/㹖/㺴$உ;-><init>(Ljava/lang/String;I)V

    sput-object v3, L㺴/㚬/䂻/㹖/㺴$உ;->㺴:L㺴/㚬/䂻/㹖/㺴$உ;

    new-instance v5, L㺴/㚬/䂻/㹖/㺴$உ;

    const-string v7, "FNC_1"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, L㺴/㚬/䂻/㹖/㺴$உ;-><init>(Ljava/lang/String;I)V

    sput-object v5, L㺴/㚬/䂻/㹖/㺴$உ;->ḓ:L㺴/㚬/䂻/㹖/㺴$உ;

    const/4 v7, 0x4

    new-array v7, v7, [L㺴/㚬/䂻/㹖/㺴$உ;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, L㺴/㚬/䂻/㹖/㺴$உ;->䆀:[L㺴/㚬/䂻/㹖/㺴$உ;

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

.method public static valueOf(Ljava/lang/String;)L㺴/㚬/䂻/㹖/㺴$உ;
    .locals 1

    const-class v0, L㺴/㚬/䂻/㹖/㺴$உ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, L㺴/㚬/䂻/㹖/㺴$உ;

    return-object p0
.end method

.method public static values()[L㺴/㚬/䂻/㹖/㺴$உ;
    .locals 1

    sget-object v0, L㺴/㚬/䂻/㹖/㺴$உ;->䆀:[L㺴/㚬/䂻/㹖/㺴$உ;

    invoke-virtual {v0}, [L㺴/㚬/䂻/㹖/㺴$உ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [L㺴/㚬/䂻/㹖/㺴$உ;

    return-object v0
.end method
