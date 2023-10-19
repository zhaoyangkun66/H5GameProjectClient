.class public final enum L㺴/㚬/䂻/㧦/䂻/㹖;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "L\u3eb4/\u36ac/\u40bb/\u39e6/\u40bb/\u3e56;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic ḓ:[L㺴/㚬/䂻/㧦/䂻/㹖;

.field public static final enum 㚬:L㺴/㚬/䂻/㧦/䂻/㹖;

.field public static final enum 㺴:L㺴/㚬/䂻/㧦/䂻/㹖;

.field public static final enum 䂻:L㺴/㚬/䂻/㧦/䂻/㹖;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, L㺴/㚬/䂻/㧦/䂻/㹖;

    const-string v1, "FORCE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, L㺴/㚬/䂻/㧦/䂻/㹖;-><init>(Ljava/lang/String;I)V

    sput-object v0, L㺴/㚬/䂻/㧦/䂻/㹖;->䂻:L㺴/㚬/䂻/㧦/䂻/㹖;

    new-instance v1, L㺴/㚬/䂻/㧦/䂻/㹖;

    const-string v3, "FORCE_SQUARE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, L㺴/㚬/䂻/㧦/䂻/㹖;-><init>(Ljava/lang/String;I)V

    sput-object v1, L㺴/㚬/䂻/㧦/䂻/㹖;->㚬:L㺴/㚬/䂻/㧦/䂻/㹖;

    new-instance v3, L㺴/㚬/䂻/㧦/䂻/㹖;

    const-string v5, "FORCE_RECTANGLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, L㺴/㚬/䂻/㧦/䂻/㹖;-><init>(Ljava/lang/String;I)V

    sput-object v3, L㺴/㚬/䂻/㧦/䂻/㹖;->㺴:L㺴/㚬/䂻/㧦/䂻/㹖;

    const/4 v5, 0x3

    new-array v5, v5, [L㺴/㚬/䂻/㧦/䂻/㹖;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, L㺴/㚬/䂻/㧦/䂻/㹖;->ḓ:[L㺴/㚬/䂻/㧦/䂻/㹖;

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

.method public static valueOf(Ljava/lang/String;)L㺴/㚬/䂻/㧦/䂻/㹖;
    .locals 1

    const-class v0, L㺴/㚬/䂻/㧦/䂻/㹖;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, L㺴/㚬/䂻/㧦/䂻/㹖;

    return-object p0
.end method

.method public static values()[L㺴/㚬/䂻/㧦/䂻/㹖;
    .locals 1

    sget-object v0, L㺴/㚬/䂻/㧦/䂻/㹖;->ḓ:[L㺴/㚬/䂻/㧦/䂻/㹖;

    invoke-virtual {v0}, [L㺴/㚬/䂻/㧦/䂻/㹖;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [L㺴/㚬/䂻/㧦/䂻/㹖;

    return-object v0
.end method
